package main

import (
	"fmt"
)

func main() {

  var s1, s2 string

  fmt.Scan(&s1, &s2) //считываем

  if (s1 == s2) {
    fmt.Println("Пароль принят")
  } else {
    fmt.Println("Пароль не принят")
  }
}
