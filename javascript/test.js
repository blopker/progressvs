function test (func, iterations, argArray) {
  console.time("test");
  for (var i = iterations; i >= 0; i--) {
    func.apply(this, argArray);
  }
  console.timeEnd("test");
}

function root (N, c) {
  var x = 10.0;
  var error = 1;
  while(Math.abs(error) >= c){
    error = x*x - N;
    x = x - error / (2*x);
  }
  return x;
}

function fib (n) {
  if (n === 0 || n === 1) {
    return n;
  }
  return fib(n-1) + fib(n-2);
}

console.log("Total time for Newton's method:");
test(root, 50000, [89262175, 0.0001]);
console.log("Total time for Fibonacci's number:");
test(fib, 100, [20]);
