# Dart
This repository serves as a guide to learning Dart, curated over the course of CS330 - Structure and Organization of Programming Languages at Simmons University. 
  
Author: Laura Wysocki
  
## Language Overview and Setup
Dart is a compiled, open-source, general-purpose programming language primarily used for web and mobile app development.
  
### History
First released on November 14, 2013, Dart is an object-oriented, class-based, garbage-collected programming language designed by Lars Bak and Kasper Lund and developed by Google. With a syntax similar to languages like JavaScript, Java, and C++, Dart was created to address the limitations Google found with JavaScript. Dart is most notably known for its web development capabilities and  Flutter framework, which allows for building cross-platform mobile applications.
  
### Installation
Dart is supported on Windows, MacOS, and Linux.
  
#### Windows
The Dart SDK can be downloaded on Windows devices via [Chocolatey](https://chocolatey.org/).

>[!IMPORTANT]
> Commands must be executed with administrator rights.
1. To install the Dart SDK:
```shell
C:\> choco install dart-sdk
```
2. To upgrade the Dart SDK:
```shell
C:\> choco upgrade dart-sdk
```
  
#### MacOS
Directions on getting the Dart SDK on MacOS can be found [here](https://dart.dev/get-dart#install) 
  
#### Linux
Directions on getting the Dart SDK on Linux can be found [here](https://dart.dev/get-dart#install)
  
#### Text Editor/IDE
Dart can be written in any text editor; however, IDEs like [VS Code](https://code.visualstudio.com/), [Android Studio](https://developer.android.com/studio), and [IntelliJ IDEA](https://www.jetbrains.com/idea/download) can enhance the coding experience. Once an IDE is installed, ensure you download any relevant Dart extensions or plugins. Personally, I will be using IntelliJ IDEA; for IntelliJ IDEA, a Dart plugin is needed to run Dart projects.  
  
### Getting Started
  
#### Useful Tutorials:

- [Tutorials from Dart](https://dart.dev/tutorials)
- [FreeCodeCamp](https://youtu.be/Ej_Pcr4uC2Q)
- [javaTpoint](https://www.javatpoint.com/dart-programming)
- [GeeksforGeeks](https://www.geeksforgeeks.org/dart-tutorial)
  
#### "Hello World" Program
In order to display "Hello World!" to the console, a top-level `main()` function is needed--and required by every app. The top-level `print()` function can be used to display text on the console. Dart requires every statement to be ended with a semicolon(`;`)--a statement terminator.  
  
The following can be written to display "Hello World!" to your console:
```dart
void main() {
  print('Hello World!');
}
```  
*A file of this example can be found at `Example Code/helloworld.dart` or [here](https://github.com/lywysocki/Dart-CS330/blob/ad812eaaaba69478239952297fac76190c63b87a/Example%20Code/helloworld.dart)
  
#### Comments in Dart
  
##### Single-line comments
Single-line comments in Dart begin with `//`  
  
Example:
```dart
void main() {
  // TODO: Print "Hello World!"
  print('Hello World!');
}
```
  
##### Multi-line comments
Mult-line comments in Dart begin with `/*` and end with `*/`  
  
Example:
```dart
/*
 * A program that displays "Hello World!" to the console
 @retuns void
*/
void main() {
  print('Hello World!');
}
```
  
## Naming Conventions, Data Types, and Binding
  
### Naming Conventions
Dart is a case-sensitive language in which variable names or identifiers can't be a keyword, can't contain spaces or special characters--except underscores(`_`) and dollar(`$`) signs, and can't begin with a number. While Dart's naming conventions are widely followed by the community for consistency and readability, they are not enforced by the Dart compiler or interpreter.
<p>&nbsp;</p>

#### Identifiers and Variable Names
Identifiers and Variable names can contain alphabets and numbers.  

Dart identifiers use:
- `PascalCase/UpperCamelCase` names are used for classes, enum types, typedefs, and type parameters. The first letter of each word (including the first word) should be capitalized, and no separators should be used.
- `lowerCamelCase` names are used for constant variables and methods. Compound names should begin with a lowercase letter, and the first letter of each subsequent word should be capitalized.
- `SCREAMING_CAPS` names are used for constants. Constants are written in all uppercase letters, with each word separated with an underscore.
- `snake_case` names are used for file naming. File names should be lowercase, with each word separated with an underscore.

Declaration examples:
```dart
int myCatsAge = 13;

double bodyTemp = 96.8;

String myName = 'Laura';

bool isSnowing = true;

List<String> programmingLangs = ['C', 'C++', 'Dart', 'Java'];

Map<String, int> testScores = {'Jim': 98, 'Bob': 21, 'Lewis': 102};

dynamic dynamicVariable = 'Hello World!';

final int finalValue = 1;

const int MAX_VALUE = 100;
const String API_KEY = 'your_api_key';
const List<String> COLORS = ['red', 'yellow', 'blue'];

var myVariableName = 'an example';
var aNumber = 10;
```
<p>&nbsp;</p>

#### Reserved Words
| Reserved        | Words              | in              | Dart          |
|-----------------|--------------------|-----------------|---------------|
| abstract<sup>2  | else               | import<sup>2    | show<sup>1    |
| as<sup>2        | enum               | in              | static<sup>2  |
| assert          | export<sup>2       | interface<sup>2 | super         |
| async<sup>1     | extends            | is              | switch        |
| await<sup>3     | extension<sup>2    | late<sup>2      | sync<sup>1    |
| base<sup>2      | external<sup>2     | library<sup>2   | this          |
| break           | factory<sup>2      | mixin<sup>2     | throw         |
| case            | false              | new             | true          |
| catch           | final (variable)   | null            | try           |
| class           | final (class<sup>2 | on<sup>1        | typedef<sup>2 |
| const           | finally            | operator<sup>2  | var           |
| continue        | for                | part<sup>2      | void          |
| covariant<sup>2 | Function<sup>2     | required<sup>2  | when          |
| default         | get<sup>2          | rethrow         | while         |
| deferred<sup>2  | hide<sup>1         | return          | with          |
| do              | if                 | sealed<sup>2    | yield<sup>3   |
| dynamic<sup>2   | implements<sup>2   | set<sup>2       |               |

Avoid using the above words as identifiers. However, if necessary, the keywords marked with superscripts can be identifiers:  
&nbsp; <sup>1</sup> **Contextual keywords**. These keywords have meaning only in specific places. They’re valid identifiers everywhere.  
&nbsp; <sup>2</sup> **Built-in identifiers**. These keywords are valid identifiers in most places, but they can’t be used as class or type names, or as import prefixes.  
&nbsp; <sup>3</sup> Limited reserved words related to asynchrony support. You can’t use `await` or `yield` as an identifier in any function body marked with `async`, `async*`, or `sync*`.  
All other words in the table are **reserved words**, which can’t be identifiers.

<sup>*</sup> The above section is pulled from [Dart](https://dart.dev/language/keywords).
  
### Types
  
##### Dart is a statically typed language:
```dart
int aNumber = 7;
aNumber = 'Hello World'; // This would cause a type error to occur
```
<sup>*</sup> Dart can infer a variable's type based on the value assigned to it when a variable is declared using `var`

<p>&nbsp;</p>
  
##### Dart is a strongly typed language:

```dart
  int num = 42;
  String text = "Hello";
  
  num = text; // This results in a compile-time error because a value of type 'String' can't be assigned to a variable of type int.
  
  print(num + text); // Again, this results in a compile-time error because a value of type 'String' can't be assigned to a variable of type int.
  print(num.toString() + text); // This prints '42Hello'
```  
<p>&nbsp;</p>
  
##### Dart supports both explicit typing and implicit typing
###### Explicit Typing:  
```dart
String myName = 'Laura'; // Explicitly typed as a String
int theYear = 2023; // Explicitly typed as an int
```
###### Implicit Typing:  
```dart
var myName = 'Laura'; // Implicitly typed as a String
var theYear = 2023; // Implicitly typed as an int
```
<p>&nbsp;</p>
  
##### Mutable and immutable variables
Within Dart, some variables are mutable--can be changed or updated after their initial assignment, while others are immutable--variables that can't be changed after their initial assignment.  
###### Mutable example:
```dart
var myFavNum = 7; // Mutable variable
myFavNum = 14;     // Value of age can be changed

List<int> mutableList = [1, 2, 3]; // Mutable list
mutableList.add(4); // You can add elements to this list.
mutableList[1] = 5; // You can modify elements in this list.
```
###### Immutable example:
```dart
final int releaseYear = 1938; // Immutable variable
const double pi = 3.14159; // Immutable variable
```
<p>&nbsp;</p>

### Operators
  
##### Arithmetic Operators
| Operator | Meaning                                                                  |
|----------|--------------------------------------------------------------------------|
| +        | Addition                                                                 |
| -        | Subtraction                                                              |
| -*expr*  | Unary minus, also known as negation (reverse the sign of the expression) |
| *        | Multiplication                                                           |
| /        | Division                                                                 |
| ~/       | Integer Division                                                         |
| %        | Modulus                                                                  |
###### Prefix and postfix increment and decrement operators:

| Operator | Meaning                                      |
|----------|----------------------------------------------|
| ++*var*  | var = var + 1 (expression value is var + 1)  |
| *var*++  | 	var = var + 1 (expression value is var)     |
| --*var*  | 	var = var - 1 (expression value is var - 1) |
| *var*--  | 	var = var - 1 (expression value is var)     |

<p>&nbsp;</p>

##### Comparison Operators

| Operator | Meaning                  |
|----------|--------------------------|
| ==       | Equal                    |
| !=       | Not equal                |
| <        | Less than                |
| \>       | Greater than             |
| <=       | Less than or equal to    |
| \>=      | Greater than or equal to |

<p>&nbsp;</p>

##### Logical Operators
| Operator | Meaning     |
|----------|-------------|
| &&       | Logical AND |
| \|\|     | Logical OR  |
| !*expr*  | Logical NOT |
<p>&nbsp;</p>

##### Bitwise Operators
| Operator | Meaning              |
|----------|----------------------|
| &        | Bitwise AND          |
| \|       | Bitwise OR           |
| ^        | Bitwise XOR          |
| ~        | Bitwise NOT          |
| <<       | Left Shift           |
| \>>      | Right Shift          |
| \>>>     | Unsigned Right Shift |
<p>&nbsp;</p>

##### Assignment Operators
| Operator | Meaning             |
|----------|---------------------|
| =        | Assignment          |
| +=       | Add and Assign      |
| -=       | Subtract and Assign |
| *=       | Multiply and Assign |
| /=       | Divide and Assign   |
| %=       | Modulus and Assign  |

<p>&nbsp;</p>

#### Mixed-Type Operations
Mixed-type operations are allowed in Dart; however, they follow specific rules for type conversion adn coercion.  
###### Promotion:  
```dart
int intValue = 7;
double doubleValue = 10.5;

double result = intValue + doubleValue; // int is promoted to a double
```
###### Coercion:  
```dart
int intValue = 7;
String stringValue = '3';

int result = intValue + int.parse(stringValue); // String is coerced to an int
```
### Addresses and Bindings
Within Dart:
- Identifier names (e.g., variable names, function names, class names) are bound to their types and addresses during the compilation phase
- Operator symbols (e.g., +, *, ==, etc.) are bound to their operations at compile-time based on the types of operands within an expression

## Loops and Functions

### Loops
Dart provides various types of loops to iterate through collections, perform repetitive tasks, or control the flow of one's code. These loops allow one to execute a block of code repeatedly based on a condition or a set number of iterations.
#### `while` Loop
Dart's `while` loop evaluates the condition before the loop, and repeatedly executes a block of code as long as the specified condition remains true.

Example:
```dart
while(!off()) {
    doSomething();
}
```

#### `do-while` Loop
Dart's `do-while` loop evaluates the condition after the loop, and repeatedly executes a block of code as long as the specified condition remains true. When it comes to `do-while` loops, the code block inside the `do` will always run at least once, regardless of whether the condition is true or false

Example:
```dart
do {
  printLine();
} while (!atEndOfPage());

```

#### `for` Loop
The `for` loop is used to execute a block of code repeatedly for a specified number of times or over a range of values. There are three parts within the parentheses: `for (initialization; condition; increment/update)`.

Example:
```dart
for (int i = 1; i <= 5; i++) {
  print('Value of i: $i');
}
```
#### `for-in` Loop
A `for-in` loop is designed for iterating over iterable collections like lists, sets, and maps. This type of loop simplifies the process of traversing through all the elements or key-value pairs within a collection.

Example:
```dart
for (var element in collection) {
  printf('The element: $element');
}
```

#### `forEach()` Method
The `forEach()` method iterate over elements in a collection like lists, sets, and maps. It's an alternative to using a traditional `for` loop or a `for-in` loop with a simplified syntax. 

Example:
```dart
list.forEach((element){
  print(element);
});
```
OR
```dart
list.forEach((element) => print(element));
```
*A file with more loop examples can be found at `Example Code/loops.dart` or [here](https://github.com/lywysocki/Dart-CS330/blob/main/Example%20Code/loops.dart)

### Functions

#### Declaring Functions
Within Dart, you can define functions anywhere within your Dart code, and as long as they're in scope when called, they will execute. Functions in Dart can be defined with or without a return type; they can accept multiple parameters--these parameters can be of different data types; and can return only a single value, but you can simulate returning multiple values via collections like lists and maps.

Examples:
```dart
// A function without a return type
void printMessage(String message) {
  print(message);
}

// A function with return type 'int'
int add(int a, int b) {
  return a + b;
}

// A function that accepts multiple parameters and
// different data types
void aCat(String name, int age, double weight) {
  print('Name: $name, Age: $age, Height: $weight');
}

// A function that uses maps to achieve a similar
// effect of returning multiple values 
Map<String, dynamic> catInfo() {
  String name = 'Jake';
  int age = 13;
  double weight = 11.7;

  return {
    'name': name,
    'age': age,
    'weight': weight
  };
}
```
<p>&nbsp;</p>

#### Recursive Functions
Dart supports recursive functions; you can call a function from within itself. 

Example: 
```dart
// A function which recursively calculates the Fibonacci sequence
int fibonacci(int n) {
  if (n <= 0) {
    return 0;
  } else if (n == 1) {
    return 1;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}
```
<p>&nbsp;</p>

#### Pass-by-Value
Dart uses pass-by-value; this means when a variable is passed to a function in Dart, a copy of the variable's value is passed. For primitive types (e.g., int, double, bool) the actual value is passed, and modifications inside the function do not affect the original variable outside the function. For objects, Dart passes a copy of the reference to the object.  
<p>&nbsp;</p>

#### Arguments, Parameters, and Local Variables Storage
| Variable Type         | Storage Location | Explanation                                                                                                                                                   |
|-----------------------|------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Primitive Types       | Stack            | Values of primitive types (e.g., int, double, bool, etc.) are stored directly on the stack.                                                                   |
| Objects               | Heap             | Actual objects are allocated in the heap memory.                                                                                                              |
| References to Objects | Stack            | References to objects (e.g., pointers; instances of classes, lists, maps, etc.) are stored on the stack. The stack holds the memory addresses of the objects. |
| Function Parameters   | Stack            | Parameters passed to functions are stored on the stack.                                                                                                       |
| Local Variables       | Stack            | Local variables within functions are stored on the stack.                                                                                                     |

## References

[1] https://dart.dev/ \
[2] https://en.wikipedia.org/w/index.php?title=Dart_(programming_language)&oldid=1174763841 \
[3] https://www.jetbrains.com/help/idea/dart.html


