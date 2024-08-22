package main

import ("fmt")

func main() {

  var x int

  fmt.Scan(&x) //считываем

  if (x % 2 == 0) {
    fmt.Println(x + 2)
  } else {
    fmt.Println(x + 1)
  }

}
