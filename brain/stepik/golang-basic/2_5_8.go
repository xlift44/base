package main

import "fmt"

func main(){
  var a, b, c, n int
  fmt.Scan(&n)
  a = n % 10
  b = n / 10 % 10
  c = n / 100
  fmt.Println(a * 100 + b * 10 + c)

}
