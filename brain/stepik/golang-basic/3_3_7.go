package main

import (
	"fmt"
)

func main() {

  var a, b int
  var c string

  fmt.Scan(&a, &b, &c) //считываем

  if c == "+" {
    fmt.Println(a + b)
  } else {
    if c == "-" {
      fmt.Println(a - b)
    } else {
      if c == "*" {
        fmt.Println(a * b)
      } else {
        if c == "/" {
          var k = float64(a)
          var t = float64(b)
          if b == 0 {
            fmt.Print("На ноль делить нельзя!")
          } else {
            fmt.Println(k / t)
          }
        } else {
          fmt.Println("Неверная операция")
        }
      }
    }
  }
}
