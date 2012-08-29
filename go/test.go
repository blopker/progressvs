package main

import (
    "fmt"
    "time"
    "math"
)

func fib(n int) int {
    if n == 0 || n == 1 {
        return n
    }
    return fib(n - 1) + fib(n - 2)
}

func newton(N, c float64) float64{
    x := float64(10.0)
    error := float64(1.0)
    for math.Abs(error) >= c {
        error = math.Pow(x, 2) - float64(N)
        x = x - error/(2 * x)
    }
    return x
}

func TestFib(times int) {
    for i := 0; i < times; i++ {
        _ = fib(20)
    }
}

func TestNewton(times int) {
    for i := 0; i < times; i++ {
        _ = newton(89262175, .0001)
    }
}

func main() {
    t := time.Now()
    TestNewton(50000)
    d := time.Since(t)
    fmt.Println("Total time for Newton's method: ", d)
    t = time.Now()
    TestFib(100)
    d = time.Since(t)
    fmt.Println("Total time for Fibonacci's number: ", d)

}
