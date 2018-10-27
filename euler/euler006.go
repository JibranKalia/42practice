package main

import (
	"fmt"
	"math"
)

func main() {
	fmt.Println(int(squareofsum(100) - sumofsquares(100)))
}

func sumofsquares(n float64) float64 {
	var ret float64 = 0
	var i float64
	for i = 0; i <= n; i++ {
		ret = ret + math.Pow(i, 2)
	}
	return ret
}

func squareofsum(n float64) float64 {
	var ret float64 = 0
	var i float64
	for i = 0; i <= n; i++ {
		ret = ret + i
	}
	return math.Pow(ret, 2)
}
