package main

import (
	"fmt"
)

func main() {

  var m int

  fmt.Scan(&m) //считываем

  switch m {
    case 1, 2, 12: fmt.Println("Зима")
    case 3, 4, 5: fmt.Println("Весна")
    case 6, 7, 8: fmt.Println("Лето")
    case 9, 10, 11: fmt.Println("Осень")
  }
}
