package main

import (
	"fmt"
)

func main() {

  var a, b int

  fmt.Scan(&a, &b) //считываем

  if (a % b == 0) {
    fmt.Println("YES")
  } else {
    fmt.Println("NO")
  }
}
