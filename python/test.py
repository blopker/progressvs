import time
from fib import fib
from newton import root

def test(func, iterations, *args):
	t = time.clock()
	for x in xrange(iterations):
		func(*args)
	return time.clock() - t

t = test(root, 100000, 89262175, .0001)
print "Total time for Newton's method:", t

t = test(fib, 100, 20)
print "Total time for Fibonacci's number:", t
