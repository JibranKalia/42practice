package main

import "fmt"

func main() {
	a := 1
	b := 2
	sum := 0

	for a < 4000000 {
		c := a + b

		a = b
		b = c

		if a%2 == 0 {
			sum = a + sum
		}
	}
	fmt.Println(sum)
}
