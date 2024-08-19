package main

import (
	"fmt"
)

func main() {

  var x int

  fmt.Scan(&x) //считываем

  x1 := x / 100
  x2 := x % 100 / 10
  x3 := x % 10

  if (x1 != x2 && x2 != x3 && x1 != x3) {
    fmt.Println("YES")
  } else {
    fmt.Println("NO")
  }

}
