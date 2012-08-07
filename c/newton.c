#include <math.h>
#include <stdlib.h>
double root(int n, double accuracy){
	double ans = 10;
	double error = 1;

	do{
		error = pow(ans, 2) - n;
		ans = ans - error / (2 * ans);
	} while (abs(error) >= accuracy);

	return ans;
}
