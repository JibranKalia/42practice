package main

import "fmt"

func main() {

	a := 999
	b := 999
	ans := 0

	for a > 900 {

		for b > 900 {
			ans = a * b
			n := ans
			rev := 0

			for n > 0 {
				rev = rev*10 + n%10
				n = n / 10
			}

			if ans == rev {
				fmt.Println(ans, a, b)
			}

			b--
		}

		b = 999
		a--
	}
}
