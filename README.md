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
}
```
  
##### Multi-line comments
Mult-line comments in Dart begin with `/*` and end with `*/`  

```dart
void main() {
  /*
  Need to create "Hello World!" output
  
  Similar to this:
  Print("Hello World!");
   */
}
```

##### Documentation comments
Documentation comments in Dart are multi-line or single-line comments that begin `///` or begin with `/*` and end with `*/`.  

Example:
```dart
/// A simple "Hello World!" function
/// 
/// Prints to the console
void main() {
  print('Hello World!');
}
```
OR
```dart
/**
 * A program that displays "Hello World!" to the console
 * @retuns void
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
- Garbage collection is utilized, so memory is automatically allocated and deallocated by the Dart runtime
- Developers don't need to manage memory manually, as the system handles memory allocation and releases unused memory when objects are no longer referenced

## Selection Control Structures

### Boolean Values
Within Dart, there are two boolean values: `true` and `false`.

### Conditional Statements
Dart's conditional statements are delimited using curly braces `{}`. These curly braces `{}` define the scope of the code-block associated with each condition. Additionally, because of the use of curly braced `{}` for scope, Dart avoids the "dangling `else`" issue. Also, Dart's language specifications dictate that the `else` clause is associated with the nearest `if`.

#### `if` Statement
Dart's `if` statement is a conditional statement which executes a block of code if a specified condition between the parentheses after `if` is evaluated to be `true`. Within Dart, the `else` statement after an `if` statement is optional and can be omitted if there's no need to execute an alternative block of code when the condition in the `if` statement evaluates to `false`.

Example:
```dart
// Syntax format
if (condition) {
  // Code-block to be executed if the condition is 'true'
}
  
// Example `if` Statement
void main() {
  int num = 7;
  
  if (num > 3) {
    print("We Love Dart!")
  }
}
```
Output:
```dart
We Love Dart!
```

#### `if...else` Statement
Within Dart, the `if-else` statement extends the `if` statement by providing an alternative code-block to execute when the condition evaluates to `false`.

Example:
```dart
// Syntax format
if (condition) {
  // Code-block to be executed if the condition is 'true'
} else {
  // Code-block to be executed if the condition is 'false'
}

// Example `if-else` Statement
void main() {
  int num = 0;
  
  if (num > 3) {
    print("We Love Dart!")
  } else {
    print("We Still Love Dart!")
  }
}
```
Output:
```
We Still Love Dart!
```

###### Conditional expressions
Within Dart, there exists conditional expressions, a compact way to write conditional statements.  

**Ternary Operator:**
* `condition ? expression1 : expression2;`
* If `condition` is `true`, `expression1` is evaluated and becomes the result of the expression.
* If `condition` is `false`, `expression2` is evaluated and becomes the result of the expression.  

Example:
```dart
void main() {
  int num = 7;
  
  String message = num > 5 ? 'num is greater than 5' : 'num is not greater than 5';
  
  print(message); // Output will be "num is greater than 5"
}
```

**Null-aware Operator:**
* `expression1 ?? expression2;`
* If `expression1` evaluates to a non-null value, the result of the expression will be `expression1`.
* If `expression1` evaluates to `null`, the result will be `expression2`.  

Example:
```dart
void main() {
  int num1;
  int num2 = 7;
  
  int result = num1 ?? num2; // If num1 is null, assign the value of num2 to result

  print(result); // Output will be 10 (b/c num1 is null)
}
```

**Null-aware Assignment Operator**
* `variable ??= value;`
* If `variable` is `null`, it assigns `value` to `variable`.  
* If `variable` is already holding a non-null value, the assignment doesn’t happen, and `variable` retains its current value.  

Example:
```dart
void main() {
  int num1;
  int num2 = 7;

  num1 ??= num2; // If num1 is null, assign the value of num2 to num1

  print(num1); // Output will be 10 (b/c num1 is null and num2 is assigned to num1)
}
```  

#### `else if` Statement
The `else if` statement allows for an additional condition to check when the initial `if` condition evaluates to `false`. Adding more and more `else if ` statements allows you to check multiple conditions sequentially.

Example:
```dart
//Synax format
if (condition) {
  // Code-block to be executed if the condition is 'true'
} else if (condition2) {
  // Code-block to be executed if the condition is 'false' and condition2 is `true`
} else {
// Code-block to be executed if the condition and condition2 are 'false'
}

// Example `if/else if/else' statement
void main() {
  int num = 7;
  
  if (num > 10) {
    print("I Love Dart!");
  } else if (num > 8) {
    print("We Love Dart!");
  } else if (num > 4) {
    print("Who Doesn't Love Dart?");
  } else {
    print("You Love Dart!");
  }
}
```
Output:
```
Who Doesn't Love Dart?
```

#### `switch` Statement
With a `switch` statement, you are able to evaluate a value expression against a series of cases.
Switch cases are useful in scenarios that involve a single variable or expression that needs to be evaulated against multiple possible values and execute different code-blocks based on those value.

When the value of the expression matches a case’s value, the case's code-block executes. Non-empty case clauses jump to the end of the switch after completion; they don't require a `break` statement. Other valid ways to end a non-empty case clause are a `continue`, `throw`, or `return` statement:
- `continue` skips the remaining code within that specific case and continues with the next iteration or case if present
- `throw` throws an exception, immediately exiting the switch block and possibly the enclosing function/method
- `return` causes the function/method containing the `switch` statement to exit and return the specified value

Example:
```dart
//Syntax format
switch (expression) {
    case value1:
      // Code to execute if expression equals value1
      break;
    case value2:
      // Code to execute if expression equals value2
      break;
    // Additional cases...
    default:
      // Code to execute if expression doesn't match any case
}

// Switch statement example
void main() {
    int num = 7;
    
    switch (num) {
      case 1:
        print('one');
        break;
      case 2:
        print('two');
        break;
      default:
        print ('other number');
    }
}
```
Output:
```
other number
```
#### Short-Circuit Logic  

- Look [here](https://github.com/lywysocki/Dart-CS330/blob/main/README.md#logical-operators) for Dart's logical operators  

Like many other languages, Dart utalizes short-circuit evaluation; essentially, evalutation of an expression is stopped as soon as the result can be determined.

###### Short-Circuit AND (`&&`) Operator
The `&&` operator returns true if both operands are true. If the left operand of `&&` is `false`, the right operand is not evaluated because the overall result will be `false` regardless of the right operand's value. If the left operand is `true`, then the right operand is evaluated.

Example:
```dart
bool a = false;
bool b = true;
bool result = a && b; // 'b' isn't evaluated b/c 'a' is false
```

###### Short-Circuit OR (`||`) Operator:
The `||` operator returns true if at least one operand is true. If the left operand of `||` is `true`, the right operand is not evaluated because the overall result will be `true` regardless of the right operand's value. If the left operand is `false`, then the right operand is evaluated.

Example:
```dart
bool x = true;
bool y = false;
bool result = x || y; // 'y' isn't evaluated b/c 'x' is true
```

A file with more control statement examples can be found at `Example Code/control_statements.dart` or [here](https://github.com/lywysocki/Dart-CS330/blob/main/Example%20Code/control_statements.dart)

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

// A function that accepts multiple parameters and different data types
void aCat(String name, int age, double weight) {
  print('Name: $name, Age: $age, Height: $weight');
}

// A function that uses maps to achieve a similar effect of returning multiple values 
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

#### Lambda Functions

Lambda functions (a.k.a., arrow functions, or anonymous functions) allows for a shorthand syntax for any function that has only one expression--not a statement. 

Example:
```dart
// The basic format of a lambda function
(returnType parameter) => expression;

// Original Code
int sum(int a, int b) {
  return a + b;
}

// Lambda function
int sum(int a, int b) => a + b
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
<p>&nbsp;</p>

#### Scoping
Dart is a lexically (statically) scoped language; the scope of variables is determined statically, simply by the layout of the code. Essentially, the variable only has access to a block where it is defined; meaning, you can "follow the curly braces outwards" to see if a variable is in scope.

Loop variables are scoped exclusively to the body of the loop in which they are declared. Whereas, function-scoped variables are accessible throughout the entire function body.

The lifetime of variables declared within a block/function is tied to their scope. Once a block is exited or a function completes execution, local variables in that block or function are removed from memory

Example:
```dart
bool topLevel = true;

void main() {
  var insideMain = true;

  void myFunction() {
    var insideFunction = true;

    void nestedFunction() {
      var insideNestedFunction = true;

      assert(topLevel);
      assert(insideMain);
      assert(insideFunction);
      assert(insideNestedFunction);
    }
  }
}
```

###### Closures
Within Dart, a  *closure* is a function object that has access to variables in its lexical scope, even if the function is used outside of that scope. 

Example:
```dart
void main() {
  String message = "Hello";

  Function sayHello = () {
    // This inner function is a closure
    print(message); // Accessing 'message' from the outer scope
  };

  sayHello(); // Prints 'Hello' using the closure
}
```
<p>&nbsp;</p>

#### Side-effects

Within Dart, side-effects are possible: an operation, function, or expression is said to have a side effect if it modifies state outside its scope (e.g., it modifies some state variable value(s) outside its local environment, modifies objects passed by reference, or performs I/O operations, etc). Since Dart allows for mutable variables and objects, there aren't any inherent guard rails against side-effects. Conversely, Dart's stong typying and immutability option promotes avoiding unintentional side-effects.

*A file with more function examples can be found at `Example Code/functions.dart` or [here](https://github.com/lywysocki/Dart-CS330/blob/main/Example%20Code/functions.dart)

## Classes and Inheritance
A simple example of a Dart object-oriented program can be found [here](https://github.com/lywysocki/Dart-CS330/blob/main/Example%20Code/object_oriented.dart).
### Objects
Dart supports objects and object-oriented programming concepts. Objects, within Dart, allow for defining classes to create objects with attributes (instance variables) and methods (functions). Information on naming conventions for objects, instance variables, or functions can be found [here](https://github.com/lywysocki/Dart-CS330/tree/main?tab=readme-ov-file#naming-conventions).
### Standard Methods
Dart provides standard methods that serve similar purposes across all objects. These standard method can be overridden in classes to define specific behaviors for objects.
#### `toString()`
**Purpose:** Returns a string representation of the object.  
**Usage:** Override this method to make a customized string representation of the object.

Example:
```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  @override
  String toString() {
    return 'Person: name = $name, age = $age';
  }
}

void main() {
  var person = Person('Alice', 30);
  print(person); // Output: 'Person: name = Alice, age = 30'
}
```
### Inheritance
Within Dart, there is a concept called inheritance, which allows one class to inherit properties and behavior from another class. Dart only allows for single inheritance, meaning a class can only inherit from one superclass. However, Dart offers mixins and interfaces to achieve similar functionality to multiple inheritance. Mixins within Dart allows for the reuse of methods and properties across multiple class hierarchies. They allow you to add functionality to a class without using inheritance.

Also, it is important to mention Dart doesn't allow you to have multiple methods with the same name and different parameters within the same class; method overloading isn't allowed.

Inheritance Exmaple:
```dart
class Animal {
  void makeSound() {
    print('Some sound');
  }
}

class Cat extends Animal {
  void meow() {
    print('Meow!');
  }

class Dog extends Animal {
  void bark() {
    print('Woof!');
  }
}
```

Mixins Example:
```dart
mixin Swimmer {
  void swim() {
    print('Swimming...');
  }
}

// Duck class using the swimmer mixin
class Duck with Swimmer {
  void quack() {
    print('Quack!');
  }
}

void main() {
  var duck = Duck();
  duck.quack(); // Output: Quack!
  duck.swim();  // Output: Swimming...
}
```

## References

[1] https://dart.dev/ \
[2] https://en.wikipedia.org/w/index.php?title=Dart_(programming_language)&oldid=1174763841 \
[3] https://www.jetbrains.com/help/idea/dart.html \
[4] https://www.geeksforgeeks.org/dart-tutorial/?ref=lbp \
[5] https://yogi-6.medium.com/pure-functions-side-effects-in-dart-functional-programming-part-1-fb931d6c0351 \
[6] https://codewithandrea.com/articles/side-effects-flutter/ \
[7] https://www.geeksforgeeks.org/dart-programming-if-else-statement-if-if-else-nested-if-if-else-if/ \
[8] https://www.javatpoint.com/dart-object-oriented-concepts#:~:text=Dart%20is%20an%20object%2Doriented,are%20the%20real%2Dlife%20entities
