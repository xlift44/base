package main

import "fmt"

func main(){
  var m int
  fmt.Scan(&m)
  cc := m / 60
  mm := m % 60
  fmt.Println(m, "мин - это", cc, "час", mm, "минут.")
}
