package controller

import (
	"impairment-care/database"
	im "impairment-care/models/impairment"
	"net/http"

	"github.com/gin-gonic/gin"
)

func AddImpairmentRoutes(router *gin.Engine) {
	router.GET("/impairment/edition", getEditions)
	router.GET("/impairment/chapter", getChapters)
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
