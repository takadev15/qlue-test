package main

import "fmt"

func main() {
  result := getShape(11)
  fmt.Println(result)
}

func getShape(n int) string{
  if n % 2 == 0 && n % 3 == 0 {
    return "CIRCLE STAR"
  } else if n % 2 == 0 {
    return "CIRCLE"
  } else if n % 3 == 0 {
    return "STAR"
  }
  return "Null"
}
