package main

import (
	"fmt"
	"math"
)

func main(){
  var a float64
  fmt.Scan(&a)
  b := a / math.Pow(2, 13)
	fmt.Println(b)
}