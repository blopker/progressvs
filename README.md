Python VS Progress Benchmarks
=============================

##Summary
Comparing the calculation speeds of Python and Progress.

##Usage
###Python

`python test.py`

###Progress

-	Open the procedure editor
-	Open test.p
-	Go to Compile -> Run...

###Java

`javac Tester.java`

`java Tester`

###C

`gcc test.c -lm -o test.exe -std=c99`

###Go

`go run test.go`

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

###Python
Total time for Newton's method: 0.884

Total time for Fibonacci's number: 0.934

###Progress
Total time for Newton's method: 19.302

Total time for Fibonacci's number: 19.753

###C
Total time for Newton's method: 0.028

Total time for Fibonacci's number: 0.014

###Java
Total time for Newton's method: 0.132

Total time for Fibonacci's number: 0.028

###Go
Total time for Newton's method: 0.125

Total time for Fibonacci's number: 0.013
