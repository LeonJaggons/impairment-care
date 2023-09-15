package controller

import (
	"impairment-care/database"
	dm "impairment-care/models/demographic"
	"net/http"

	"github.com/gin-gonic/gin"
	"gorm.io/gorm"
)

func AddDemographicRoutes(router *gin.Engine) {
	router.GET("/demographic/gender", getGenders)
	router.GET("/demographic/ethnicity", getEthnicities)
	router.GET("/demographic/occupation", getOccupations)
	router.GET("/demographic/country", getCountries)
	router.GET("/demographic/industry", getIndustries)
	router.GET("/demographic/dominantside", getDominantSides)
	router.GET("/demographic/occupationcat", getOccupationCats)
	router.GET("/demographic/maritalstatus", getMaritalStatuses)
}

func getGenders(c *gin.Context) {
	var genders []dm.Gender
	database.Store.Find(&genders)
	c.JSON(http.StatusOK, genders)
}

func getEthnicities(c *gin.Context) {
	var ethnicities []dm.Ethnicity
	database.Store.Find(&ethnicities)
	c.JSON(http.StatusOK, ethnicities)
}

func getIndustries(c *gin.Context) {
	var industries []dm.Industry
	database.Store.Order("UPPER(description) ASC").Find(&industries)
	c.JSON(http.StatusOK, industries)
}

func getOccupations(c *gin.Context) {
	var occupations []dm.Occupation
	var q = c.Query("q")
	var industryID = c.Query("industryID")

	// Filter out industry matches if param exists
	var occupsTable *gorm.DB = database.Store.Table("occupation")
	if industryID != "" {
		occupsTable = occupsTable.Where("industryid = ?", industryID)

	}

	// Query industry filtered occupations
	var resultsTable *gorm.DB = occupsTable
	if q != "" {
		wildcardToken := "%" + q + "%"
		query := "UPPER(description) LIKE UPPER(?)"
		resultsTable = resultsTable.Where(query, wildcardToken)
	}
	resultsTable.Order("UPPER(description) ASC")
	resultsTable.Find(&occupations)
	c.JSON(http.StatusOK, occupations)
}

func getCountries(c *gin.Context) {
	var countries []dm.Country
	var qParam = c.Query("q")

	if qParam == "" {
		database.Store.Find(&countries)
	} else {
		wildcardToken := "%" + qParam + "%"
		query := "UPPER(name) LIKE UPPER(?)"
		database.Store.Where(query, wildcardToken).Find(&countries)
	}
	c.JSON(http.StatusOK, countries)
}

func getDominantSides(c *gin.Context) {
	var dominantSides []dm.DominantSide
	database.Store.Find(&dominantSides)
	c.JSON(http.StatusOK, dominantSides)
}

func getOccupationCats(c *gin.Context) {
	var occupationCats []dm.OccupationCat
	database.Store.Find(&occupationCats)
	c.JSON(http.StatusOK, occupationCats)
}

func getMaritalStatuses(c *gin.Context) {
	var maritalStatuses []dm.MaritalStatus
	database.Store.Find(&maritalStatuses)
	c.JSON(http.StatusOK, maritalStatuses)
}
