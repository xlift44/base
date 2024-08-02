package main

import ("fmt"; "math")

func main() {

  var a, b float64

  fmt.Scan(&a, &b) //считываем
  fmt.Println(math.Sqrt(a * a + b * b))

}