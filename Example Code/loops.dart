/**
 * A few more examples of each of the five types of loops in Dart
 */
class Loops {

  void whileExample() {
    int counter = 0;

    // while loop
    while (counter < 5) {
      print('I am loop #${counter + 1} of the while loop');
      counter++;
    }
  }

  void doWhileExample() {
    int count = 0;

    // do-while loop
    do {
      print('I am loop #${count + 1} of the do-while loop');
      count++;
    } while (count < 5);
  }

  void forExample() {
    // for loop
    for (int i = 0; i < 5; i++) {
      print('I am loop #$i of the for loop');
    }
  }

  void forInExample() {
    List<int> myList = [1, 2, 3, 4, 5];

    // for-in loop
    for (var element in myList) {
      print('I am element #${myList.indexOf(element)} with value of $element in the for-in loop');
    }
  }

  void forEachExample() {
    Map<int, String> myMap = {
      1 : 'apple',
      2 : 'watermelon',
      3 : 'mango',
    };

    // forEach() loop
    myMap.forEach((key, value) {
      print('This is a key: $key and  it\'s value: $value within the map');
    });
  }
}

// main function for running functions
void main() {
  // To run each example:
  // Class().function();
  Loops().whileExample();
  Loops().doWhileExample();
  Loops().forExample();
  Loops().forInExample();
  Loops().forEachExample();

}