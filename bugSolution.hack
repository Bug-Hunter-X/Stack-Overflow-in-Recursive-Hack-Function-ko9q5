function foo(x: int): int {
  var result: int = 1;
  for (var i = 1; i <= x; i++) {
    result *= i;
  }
  return result;
}

function bar(): void {
  echo foo(5);
}

This iterative version avoids the stack overflow by using a loop to calculate the factorial.  It's more efficient for larger inputs.