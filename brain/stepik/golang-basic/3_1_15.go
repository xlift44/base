package main

import (
	"fmt"
)

func main() {

  var x int

  fmt.Scan(&x) //считываем

  if (x < 0) {
    fmt.Println("-1")
  } else if (x == 0) {
    fmt.Println("0")
  } else {
    fmt.Println("1")
  }
}
