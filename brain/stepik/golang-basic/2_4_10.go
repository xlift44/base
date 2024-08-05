package main

import "fmt"

func main(){
  var a, b, n, r, k int
  fmt.Scan(&a, &b, &n)
  r = (a * 100 + b) * n / 100
  k = (a * 100 + b) * n % 100
  fmt.Println(r, k)
}
