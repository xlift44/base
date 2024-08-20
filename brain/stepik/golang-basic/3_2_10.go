package main

import (
	"fmt"
)

func main() {

  var x int

  fmt.Scan(&x) //считываем

  x1 := x % 1000 / 100
  x2 := x % 100 / 10
  x3 := x % 10

  y := x / 1000
  y1 := y % 1000 / 100
  y2 := y % 100 / 10
  y3 := y % 10

  if (x1 + x2 + x3 == y1 + y2 + y3) {
    fmt.Println("YES")
  } else {
    fmt.Println("NO")
  }

}
