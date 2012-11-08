Progress VS _ Benchmarks
=============================

##Summary
Comparing the speed of Progress and other languages.

##Usage
###Progress

- Open the procedure editor
- Open test.p
- Go to Compile -> Run...

###Python

`python test.py`

###Java

`javac Tester.java`

`java Tester`

###C

`gcc test.c -lm -o test.exe -std=c99`

###Go

`go run test.go`

###JavaScript

`node test.js`

##Tests
###Newton's
Newton's method of finding minimums is used to calculate the square root.

This test is run 50000 times, finding the square root of 89262175 to an accuracy of .0001.

Newton's test shows the raw calculation power of each language.

###Fibonacci
The Fibonacci test calculates the nth Fibonacci number recursively.

This test is run 100 times, finding the 20th Fibonacci number.

Fibonacci's test demonstrates how well each language deals with large stack depths.

##Results
Results are in seconds and shows the total time for all iterations of each test.

###Progress
Total time for Newton's method: 19.302

Total time for Fibonacci's number: 19.753

###Python
Total time for Newton's method: 0.884

Total time for Fibonacci's number: 0.934

###C
Total time for Newton's method: 0.028

Total time for Fibonacci's number: 0.014

###Java
Total time for Newton's method: 0.132

Total time for Fibonacci's number: 0.028

###Go
Total time for Newton's method: 0.125

Total time for Fibonacci's number: 0.013

###JavaScript
Total time for Newton's method: 0.17

Total time for Fibonacci's number: 0.15
