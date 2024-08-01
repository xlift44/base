package main

import (
	"fmt"
)

func main() {

  var w int

  fmt.Scan(&w) //считываем

  if (w < 60) {
    fmt.Println("Легкий вес")
  } else {
    if (w < 64) {
      fmt.Println("Первый полусредний вес")
    } else {
      if (w < 69) {
        fmt.Println("Полусредний вес")
      }
    }
  }
}
