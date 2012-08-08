import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class Tester {

	public static void main(String[] args) {
		System.out.println("Total time for Newton's method: "
				+ test("newton", 50000, 89262175, .0001));
		System.out.println("Total time for Fibonacci's number: "
				+ test("fib", 100, 20));
	}

	public static int fib(int n) {
		if (n == 0 || n == 1) {
			return n;
		}
		return fib(n - 1) + fib(n - 2);
	}

	public static double newton(int n, double accuracy) {
		double x = 10;
		double error = 1;

		while (Math.abs(error) >= accuracy) {
			error = Math.pow(x, 2) - n;
			x = x - error / (2 * x);
		}
		return x;
	}

	private static double test(String method, int iterations, Object... params){
		long startTime = 0;
		long endTime = 0;
		try {

			Method[] ms = Tester.class.getMethods();
			Method m = ms[0];
			for (int i = 0; i < ms.length; i++) {
				if(ms[i].getName().equals(method)){
					m = ms[i];
					break;
				}
				if(i+1 == ms.length){ // Method not found.
					return -2;
				}
			}

			startTime = System.currentTimeMillis();
			for (int i = 0; i < iterations; i++) {
				m.invoke(null, params);
			}
			endTime = System.currentTimeMillis();
			return (endTime - startTime) / 1000.0;

		} catch (SecurityException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		return -3;
	}
}
