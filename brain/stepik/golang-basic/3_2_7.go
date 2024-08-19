package main

import (
	"fmt"
)

func main() {

  var x int

  fmt.Scan(&x) //считываем

  if (-1 < x && x < 17) {
    fmt.Println("Принадлежит")
  } else {
    fmt.Println("Не принадлежит")
  }

}
