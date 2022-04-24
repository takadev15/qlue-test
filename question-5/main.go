package main

import "fmt"

func main() {
  findSets(11)
}

func findSets(n int) {
  for i := 0; i < n; i++ {
    switch i {
    case 0:
      res := n/2
      temp := n - res
      fmt.Printf("%d, %d\n", res, temp)

    case 1:
      res := n - 1
      fmt.Printf("%d, %d\n", 1, res)

    default:
      res := n - i
      for j := 0; j < i; j++ {
        fmt.Printf("%d, ", 1)
      }
      fmt.Printf("%d\n", res)
      fmt.Printf("%d, %d\n", res, i)
    }
  }
}
