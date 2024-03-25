package main

import "fmt"

func main(){
  var n int
  fmt.Scan(&n)

  fmt.Println("Следующее за числом", n, "число:", (n + 1))
  fmt.Println("Для числа", n, "предыдущее число:", (n - 1))
}
