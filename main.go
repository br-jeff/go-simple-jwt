package main

import (
	"github.com/gin-gonic/gin"

	"github.com/br-jeff/go-simple-jwt/controllers"
)

func main() {
	r := gin.Default()

	r.GET("/health", controllers.HealthGET)

	r.Run()
}
