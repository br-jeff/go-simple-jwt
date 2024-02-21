package controllers

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func HealthGET(ctx *gin.Context) {
	ctx.JSON(http.StatusOK, gin.H{
		"message": "Server is running",
	})
}
