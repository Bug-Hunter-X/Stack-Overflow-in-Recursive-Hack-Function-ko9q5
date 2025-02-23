function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function bar(): void {
  echo foo(5);
}

This code will lead to a stack overflow error if the input value is large because the recursive calls to `foo` will create many stack frames. This will happen even if the input x is positive because no base case is handled to stop the recursion.