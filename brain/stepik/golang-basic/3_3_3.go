package main

import (
	"fmt"
)

func main() {

  var x int

  fmt.Scan(&x) //считываем

  if (x >= -3 && x <= 1 || x >= 5 && x <= 9) {
    fmt.Println("YES")
  } else {
    fmt.Println("NO")
  }
}
