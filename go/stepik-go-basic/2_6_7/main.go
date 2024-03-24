package main

import "fmt"

func main(){
  var x float64
  fmt.Scan(&x)
  k:=int(x)
	fmt.Println(x - float64(k))
}

// с float32 результат будет неверен

