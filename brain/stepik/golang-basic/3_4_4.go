package main

import ("fmt")

func main() {

  var x int

  fmt.Scan(&x) //считываем

  if (x % 2 == 0) {
    fmt.Println("YES")
  } else {
    fmt.Println("NO")
  }

}
