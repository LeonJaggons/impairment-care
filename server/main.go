package main

import (
	pc "impairment-care/controllers"

	"github.com/gin-gonic/gin"
)

func main() {
	StartServer()
}

func StartServer() {
	// var originURL string = "https://localhost:44411"
	router := gin.Default()
	ConfigureRoutes(router)
	router.Run()
}

func ConfigureRoutes(r *gin.Engine) {
	pc.AddPatientRoutes(r)
	pc.AddDemographicRoutes(r)
	pc.AddImpairmentRoutes(r)
}
