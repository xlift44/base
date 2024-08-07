package main

import (
	"fmt"
)

func main() {

  var x int

  fmt.Scan(&x) //считываем

  if (x / 1000 == 0 && x / 100 != 0) {
    fmt.Println("YES")
  } else {
    fmt.Println("NO")
  }

}
