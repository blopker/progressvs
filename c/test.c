#include <stdio.h>
#include <time.h>
#include "fib.c"
#include "newton.c"

int main(int argc, char const *argv[])
{
	int t;
	double out;

	t = clock();
	for (int i = 0; i < 50000; ++i)
	{
		out = root(89262175, .0001);
	}
	t = clock() - t;

	printf("Total time for Newton's method: %.3f\n", ((float)t)/CLOCKS_PER_SEC);

	t = clock();
	for (int i = 0; i < 100; ++i)
	{
		out = fib(20);
	}
	t = clock() - t;

	printf("Total time for Fibonacci's number: %.3f\n", ((float)t)/CLOCKS_PER_SEC);

	return 0;
}
