package main

import (
	"bufio"
	"fmt"
	"os"
)
func main() {
  var s string
  fmt.Scan(&s)
   scanner := bufio.NewScanner(os.Stdin)
   _ = scanner.Scan()
   name1 := scanner.Text()
   _ = scanner.Scan()
   name2 := scanner.Text()
   _ = scanner.Scan()
   name3 := scanner.Text()
   fmt.Println(name1 + s + name2 + s + name3)
}
