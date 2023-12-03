/**
 * - Write a function that takes in two numbers, multiplies them, and returns the output
 * - Write a recursive function (one that calculates a factorial is fine)
 * - Write a function that takes in a string (or your language's equivalent) and splits it into two strings, then returns both strings
 * - Call your functions and save the results of the function calls in variables.
 * - Write a function that tests whether your language is pass-by-reference or pass-by-value.
 */

// Write a function that takes in two numbers, multiplies them, and returns the output


// Write a recursive function (one that calculates a factorial is fine)
int factorial(int n) {
  if (n <= 1) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

void main() {
  int number = 5;
  int result = factorial(number);
  print('Factorial of $number is $result');
}

// Write a function that takes in a string (or your language's equivalent) and splits it into two strings, then returns both strings

// Call your functions and save the results of the function calls in variables.

// Write a function that tests whether your language is pass-by-reference or pass-by-value.