/**
 * A few more examples of control statements in Dart
 */

// a one-condition if/else statement
void oneConditionMain() {
  bool x = true;

  // One-condition if/else statement
  if (x == true) {
    print('x is true');
  } else {
    print('x isn\'t true');
  }
}

// a multi-condition if/else statement
void multiConditionMain() {
  int x = 5;
  int y = 7;

  // Multi-condition if/else statement
  if (x > 0 && y < 10) {
    print('x is greater than 0, and y is less than 10');
  } else {
    print('Conditions are not met');
  }
}

// if/elif/else statements
void ifElseifElse() {
  int number = 5;

  if (number > 5) {
    print('Number is greater than 5');
  } else if (number < 5) {
    print('Number is less than 5');
  } else {
    print('Number is equal to 5');
  }
}

// short-circuit logic
void shortCircuitMain() {
  bool a = false;
  bool b = true;

  // Using && (AND) - Short-circuit logic
  if (a && b) {
    print('Both conditions are true');
  } else {
    print('One or both conditions are false');
  }

  // Using || (OR) - Short-circuit logic
  if (a || b) {
    print('At least one condition is true');
  } else {
    print('Both conditions are false');
  }
}

//a switch-case statement
void switchMain() {
  String fruit = 'apple';

  switch (fruit) {
    case 'apple':
      print('Selected fruit is an apple');
      break;
    case 'banana':
      print('Selected fruit is a banana');
      break;
    case 'orange':
      print('Selected fruit is an orange');
      break;
    default:
      print('Selected fruit is something else');
  }
}

void main() {
  oneConditionMain();
  multiConditionMain();
  ifElseifElse();
  shortCircuitMain();
  switchMain();
}
