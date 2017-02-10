package main

import "fmt"

func main() {

	//fmt.Println(isDivisible(25201))

	stop := false
	for i := 11; stop == false; i++ {
		if isDivisible(i) == true {
			fmt.Println(i)
			stop = true
		}
	}

}

func isDivisible(n int) bool {
	d := 20

	if n%d == 0 && n%(d-1) == 0 && n%(d-2) == 0 && n%(d-3) == 0 && n%(d-4) == 0 && n%(d-5) == 0 && n%(d-6) == 0 && n%(d-7) == 0 && n%(d-8) == 0 && n%(d-9) == 0 && n%(d-10) == 0 && n%(d-11) == 0 && n%(d-12) == 0 && n%(d-13) == 0 && n%(d-14) == 0 {
		return true
	}

	return false
}
