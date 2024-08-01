package main

import (
	"fmt"
)

func main() {

  var m int

  fmt.Scan(&m) //считываем

  switch m {
    case 1, 3, 5, 7, 8, 10, 12: fmt.Println(31)
    case 2: fmt.Println(29)
    default: fmt.Println(30)
  }
}
