package main

import (
	"bufio"
	"fmt"
	"os"
)
func main() {
   scanner := bufio.NewScanner(os.Stdin) // создаем копию структуры bufio.Scanner
   _ = scanner.Scan()
   name1 := scanner.Text()
   _ = scanner.Scan()
   name2 := scanner.Text()
   _ = scanner.Scan()
   name3 := scanner.Text()
   fmt.Println(name3)
   fmt.Println(name2)
   fmt.Println(name1)
}
