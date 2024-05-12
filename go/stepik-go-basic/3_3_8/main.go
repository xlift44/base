package main

import (
	"fmt"
	"math"
)

func main() {

  var a, b, c, d float64

  fmt.Scan(&a, &b, &c) //считываем

  d = b * b - 4 * a * c


  if (d > 0) {
      var x1 = (-b + math.Sqrt(d)) / (2 * a)
      var x2 = (-b - math.Sqrt(d)) / (2 * a)
      if (x1 > x2) {
        fmt.Println(x2)
        fmt.Println(x1)
      } else {
        fmt.Println(x1)
        fmt.Println(x2)
      }
  } else {
    if (d == 0) {
      fmt.Println(-b / (2 * a))
    }
  }
}
