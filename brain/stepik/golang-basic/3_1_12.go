package main

import (
	"fmt"
)

func main() {

  var n int

  fmt.Scan(&n) //считываем

  if (n % 2 == 0) {
    fmt.Println("YES")
  } else {
    fmt.Println("NO")
  }
}
