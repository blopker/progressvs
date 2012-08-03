def root(N,c):
	x = 10.0 # Initial guess
	error = 1

	while abs(error) >= c:
		error = x**2 - N
		x = x - error / (2 * x)
	return x
