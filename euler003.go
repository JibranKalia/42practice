package main

import (
	"fmt"
	"math"
)

func main() {

	n := 600851475143

	for i := 3; i <= int(math.Sqrt(float64(n))); i += 2 {
		if n%i == 0 {
			fmt.Println(i)
			n = n / i
		}
	}
	fmt.Println(n)
}
