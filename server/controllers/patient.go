package controller

import (
	"impairment-care/database"
	pm "impairment-care/models/patient"
	"net/http"

	"github.com/gin-gonic/gin"
)

func AddPatientRoutes(router *gin.Engine) {
	router.GET("/patient", getPatients)
	router.POST("/patient", addPatient)

	router.GET("/patient/visit", getVisits)
	router.POST("/patient/visit", addVisit)
}

func getPatients(c *gin.Context) {
	var patients []pm.Patient
	database.Store.Find(&patients)
	c.JSON(http.StatusOK, patients)
}

func addPatient(c *gin.Context) {
	var newPatient pm.Patient
	if err := c.ShouldBindJSON(&newPatient); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	res := database.Store.Create(&newPatient)
	if res.Error != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": res.Error.Error()})
		return
	}
	c.JSON(http.StatusOK, newPatient)
}

func getVisits(c *gin.Context) {
	var visits []pm.VisitView
	var patientID = c.Query("patientID")

	var visitsTable = database.Store.Table("visit").Joins("inner join chapter on chapter.id = visit.defaultchapterid").Where("patientid = ?", patientID).Select("visit.*, chapter.name as defaultchaptername")
	visitsTable.Find(&visits)

	c.JSON(http.StatusOK, visits)
}

func addVisit(c *gin.Context) {
	var newVisit pm.Visit
	if err := c.ShouldBindJSON(&newVisit); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	res := database.Store.Create(&newVisit)
	if res.Error != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": res.Error.Error()})
		return
	}
	c.JSON(http.StatusOK, newVisit)

}
