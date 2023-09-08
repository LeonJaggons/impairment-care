package controller

import (
	"impairment-care/database"
	pm "impairment-care/models/patient"
	"net/http"

	"github.com/gin-gonic/gin"
)

func AddPatientRoutes(router *gin.Engine) {
	router.GET("/patient", getPatients)
}

func getPatients(c *gin.Context) {
	var patients []pm.Patient
	database.Store.Find(&patients)
	c.JSON(http.StatusOK, patients)
}
