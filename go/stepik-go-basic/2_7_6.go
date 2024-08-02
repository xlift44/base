package main

import (
	"fmt"
)

func main() {

  var a int

  fmt.Scan(&a) //считываем
  fmt.Println(a / 100 - a / 1000 * 10)

}