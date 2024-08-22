package main

import ("fmt")

func main() {

  var x int

  fmt.Scan(&x) //считываем

  x1 := x % 10
  x2 := x / 10 % 10
  x3 := x / 100 % 10
  x4 := x / 1000 % 10

  if (x1 * 1000 + x2 * 100 + x3 + 10 + x4 == x) {
    fmt.Println("YES")
  } else {
    fmt.Println("NO")
  }

}
