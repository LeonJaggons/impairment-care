package controller

import (
	"impairment-care/database"
	"impairment-care/models"
	im "impairment-care/models/impairment"
	"math"
	"net/http"
	"strconv"
	"strings"

	"github.com/gin-gonic/gin"
)

func AddImpairmentRoutes(router *gin.Engine) {
	router.GET("/impairment/edition", getEditions)
	router.GET("/impairment/chapter", getChapters)
	router.GET("/impairment/patient", handleGetPatientImpairment)
	router.POST("/impairment/patient", handleUpdatePatientImpairment)

	router.GET("/impairment/dependant", handleGetDependantImpairments)
}

func getEditions(c *gin.Context) {
	var editions []im.Edition
	database.Store.Find(&editions)
	c.JSON(http.StatusOK, editions)
}

func getChapters(c *gin.Context) {
	var chapters []im.Chapter
	database.Store.Find(&chapters)
	c.JSON(http.StatusOK, chapters)
}

func handleGetDependantImpairments(c *gin.Context) {
	impCode := c.Query("impCode")
	depImps := getDependantImpairments(impCode)
	c.JSON(http.StatusOK, depImps)
}

func handleGetPatientImpairment(c *gin.Context) {
	patientID := c.Query("patientID")

	patientImpairmentTable := database.Store.Table("patient_impairment").Where("patientid = ?", patientID)
	var patientImpairments []models.PatientImpairment

	patientImpairmentTable.Find(&patientImpairments)
	c.JSON(http.StatusOK, patientImpairments)
}

func handleUpdatePatientImpairment(c *gin.Context) {
	patientID, _ := strconv.Atoi(c.Query("patientID"))
	impCode := c.Query("impCode")
	value, _ := strconv.ParseFloat(c.Query("value"), 64)

	imp := getImpairment(impCode)
	updatePatientImpairment(patientID, value, imp)
}

func updatePatientImpairment(patientID int, value float64, imp models.Impairment) {
	impValue := calculateImpairment(patientID, imp, value)
	if patientImpairmentExist(patientID, imp.Code) {
		updatedValues := map[string]interface{}{
			"value":            value,
			"impairment_value": impValue.ImpairmentValue,
		}
		database.Store.Table("patient_impairment").Where("patientid = ?", patientID).Where("impairment_code = ?", imp.Code).Updates(updatedValues)
	} else {
		newPatientImpairment := models.PatientImpairment{
			PatientId:       patientID,
			ImpairmentCode:  imp.Code,
			Value:           value,
			ImpairmentValue: impValue.ImpairmentValue,
		}
		database.Store.Create(&newPatientImpairment)
	}
	dependants := getDependantImpairments(imp.Code)
	for _, depImp := range dependants {
		updatePatientImpairment(patientID, 0, depImp)
	}
}

func calculateImpairment(patientID int, imp models.Impairment, value float64) models.PatientImpairment {
	var impVal models.PatientImpairment
	switch imp.OperationCode {
	case "LOOKUP_5":
	case "LOOKUP_10":
		impVal = calculateIVWithLookup(patientID, imp, value)
	case "ADD":
		factors := imp.GetFactorImpairmentValues(patientID)
		impVal = calculateImpairmentWithAddition(patientID, factors)
	}
	return impVal

}

func patientImpairmentExist(patientID int, impCode string) bool {
	var rowCount int64
	database.Store.Table("patient_impairment").Where("patientid = ?", patientID).Where("impairment_code = ?", impCode).Count(&rowCount)
	return rowCount > 0

}

// IV = impairment value
func calculateIVWithLookup(patientID int, imp models.Impairment, value float64) models.PatientImpairment {
	switch imp.OperationCode {
	case "LOOKUP_5":
		value = roundToNearest(value, 5)
	case "LOOKUP_10":
		value = roundToNearest(value, 10)
	default:
		break
	}
	impValueTableName := "imp_" + strings.ToLower(imp.Code)

	var impValue models.PatientImpairment
	database.Store.Table(impValueTableName).Where("value = ?", value).Find(&impValue)
	impValue.ID = 0
	impValue.PatientId = patientID
	return impValue
}

func calculateImpairmentWithAddition(patientID int, imps []models.PatientImpairment) models.PatientImpairment {
	var totalImpVal = models.EmptyPatientImpairment(patientID)
	for _, iv := range imps {
		totalImpVal = totalImpVal.Add(iv)
	}
	return totalImpVal
}

func getImpairment(impCode string) models.Impairment {
	impTable := database.Store.Table("impairment").Where("code = ?", impCode)
	var imp models.Impairment
	impTable.First(&imp)
	return imp
}

// Dependant impairments are any impairment that contain "impCode" as a factor
func getDependantImpairments(impCode string) []models.Impairment {
	var dependantImps []models.Impairment
	database.Store.Table("impairment").Where("? = any(factors)", impCode).Find(&dependantImps)
	return dependantImps
}

func roundToNearest(number float64, multOf int) float64 {
	return float64(math.Round(number/float64(multOf)) * float64(multOf))
}
