package main

import (
	"fmt"
)

func main() {

  var x int

  fmt.Scan(&x) //считываем

  if (x <= 13) {
    fmt.Println("детство")
  } else if (x <= 24){
    fmt.Println("молодость")
  } else if (x <= 59){
    fmt.Println("зрелость")
  } else {
    fmt.Println("старость")
  }

}
