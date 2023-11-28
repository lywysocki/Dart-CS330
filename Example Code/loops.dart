/**
 *
 * - Write (or try to emulate, if your language doesn’t have them) different kinds of loops: while, do/while, for, foreach
 * - Write a function that takes in two numbers, multiplies them, and returns the output
 * - Write a recursive function (one that calculates a factorial is fine)
 * - Write a function that takes in a string (or your language's equivalent) and splits it into two strings, then returns both strings
 * - Call your functions and save the results of the function calls in variables.
 * - Write a function that tests whether your language is pass-by-reference or pass-by-value.
 */

class Loops {
  bool i_am_true = true;

  int whileExample(bool b) {
    int counter = 0;

    while (b) {
      counter++;
      if (counter > 10) {
        break;
      }
    }
    return counter;
  }

}

// Write a function that takes in two numbers, multiplies them, and returns the output


// Write a recursive function (one that calculates a factorial is fine)