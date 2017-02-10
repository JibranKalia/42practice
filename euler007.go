package main

import "fmt"

func main() {

	d := 3
	count := 2

	for i := 0; count <= 10001; i++ {
		if isprime(d) == true {
			count++
		}
		fmt.Println(d, count, isprime(d))
		d += 2
	}
}

func isprime(num int) bool {
	if num%2 == 0 && num > 2 {
		return false
	}

	for i := 3; i < num/2; i += 2 {
		if num%i == 0 {
			return false
		}
	}
	return true
}
