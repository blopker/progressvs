package main

import (
	"fmt"
	"math"
	"time"
)

type Tester func(int)

func fib(n int) int {
	if n == 0 || n == 1 {
		return n
	}
	return fib(n-1) + fib(n-2)
}

func newton(N, c float64) float64 {
	x := 10.0
	error := 1.0
	for math.Abs(error) >= c {
		error = math.Pow(x, 2) - N
		x = x - error/(2*x)
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

func TimeIt(tester Tester, times int) time.Duration {
	t := time.Now()
	tester(times)
	d := time.Since(t)
	return d
}

func main() {
	fmt.Println("Total time for Newton's method: ", TimeIt(TestNewton, 50000))
	fmt.Println("Total time for Fibonacci's number: ", TimeIt(TestFib, 100))
}
