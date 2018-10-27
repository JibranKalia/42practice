package main

import "fmt"

func main() {
	ret := 0

	for i := 0; i < 1000; i++ {
		if i%3 == 0 || i%5 == 0 {
			ret += i
		}
	}

	fmt.Println(ret)
}
