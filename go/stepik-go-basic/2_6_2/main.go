package main

import "fmt"

func main(){
  var a, b, c float64
  fmt.Scan(&a, &b)
  c = 0.5 * a * b
	fmt.Println(c)
}

// с float32 результат будет неверен

