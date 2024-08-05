package main

import (
	"fmt"
)

func main() {

  var n1, n2 int

  fmt.Scan(&n1, &n2) //считываем

  if (n1 > n2) {
    fmt.Println(n1)
  } else {
    fmt.Println(n2)
  }
}
