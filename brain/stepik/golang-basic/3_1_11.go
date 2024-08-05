package main

import (
	"fmt"
)

func main() {

  var n int

  fmt.Scan(&n) //считываем

  if (n < 12) {
    fmt.Println("Доступ запрещен")
  } else {
    fmt.Println("Доступ разрешен")
  }
}
