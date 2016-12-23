package main

import "fmt"

func main() {

	largestPalindrome := 0
	a := 100
	for a <= 999 {
		b := 100
		for b <= 999 {
			if isPalindrome(a*b) && a*b > largestPalindrome {
				largestPalindrome = a * b
			}
			b++
		}
		a++
	}
	fmt.Println(largestPalindrome)
}

func isPalindrome(n int) bool {
	if n == reverse(n) {
		return true
	} else {
		return false
	}
}

func reverse(n int) int {
	rev := 0
	for n > 0 {
		rev = rev*10 + n%10
		n = n / 10
	}
	return rev
}
