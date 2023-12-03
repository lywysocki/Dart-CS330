/**
 *
 * - Write (or try to emulate, if your language doesn’t have them) different kinds of loops: while, do/while, for, foreach
 *
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
