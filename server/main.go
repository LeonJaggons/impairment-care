package main

import (
	pc "impairment-care/controllers"

	"github.com/gin-contrib/cors"
	"github.com/gin-gonic/gin"
)

func main() {
	StartServer()
}

func StartServer() {
	// var originURL string = "https://localhost:44411"
	router := gin.Default()
	ConfigureRoutes(router)
	AllowCORS(router)
	router.Run()
}

func ConfigureRoutes(r *gin.Engine) {
	pc.AddDemographicRoutes(r)
	pc.AddPatientRoutes(r)
	pc.AddImpairmentRoutes(r)
}

func AllowCORS(r *gin.Engine) {
	corsConfig := cors.DefaultConfig()

	corsConfig.AllowOrigins = []string{"*"}
	corsConfig.AllowMethods = []string{"GET", "POST", "PUT", "DELETE", "OPTIONS"}

	r.Use(cors.New(corsConfig))
}
