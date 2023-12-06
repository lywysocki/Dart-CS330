/**
 * A few more examples of writing functions, how to call functions,
 * and saving results of function calls in variables.
 */

// A function that takes in two numbers, multiplies them, and returns the output
int multiply(int num1, int num2) {
  return num1 * num2;
}

void main() {
  int n1 = 6;
  int n2 = 7;

  int prod = multiply(n1, n2);

  print('The product of $n1 * $n2 is $prod');
}


// A recursive function which calculates a factorial
int factorial(int n) {
  if (n <= 1) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

void factorialMain() {
  int number = 5;
  int result = factorial(number);

  print('Factorial of $number is $result');
}


// A function that takes in a string and splits it into two strings, then returns both strings
List<String> splitString(String input, int splitIndex) {

  if (splitIndex >= 0 && splitIndex < input.length) {
    String firstPart = input.substring(0, splitIndex);
    String secondPart = input.substring(splitIndex);

    return [firstPart, secondPart];

  } else {
    return [input, ''];
  }
}

void splitMain() {
  String originalString = 'HelloWorld!';
  int splitIndex = 5;

  List<String> result = splitString(originalString, splitIndex);

  print('First part: ${result[0]}');
  print('Second part: ${result[1]}');
}


// A function that tests whether Dart is pass-by-reference or pass-by-value
void testFunction(int number, List<int> list) {
  number = 20; // Modifying the local 'number' (doesn't affect the original value)
  list[0] = 100; // Modifying the list (affects the original list)
}

void testMain() {
  int num = 10;
  List<int> myList = [1, 2, 3];

  print('Before function call: a = $num, myList = $myList'); // Prints initial values

  testFunction(num, myList);

  print('After function call: a = $num, myList = $myList'); // Prints values after function call
}
