package main

import "fmt"

func main(){
  var x int
  fmt.Scan(&x)
  a := x * x
  b := a * a * a
	fmt.Println(b)
}
