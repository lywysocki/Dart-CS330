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
*A file of this example can be found at `Example Code/helloworld.dart` or [here](https://github.com/lywysocki/Dart-CS330/blob/main/helloworld.dart)
  
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
| Operator | Meaning   |
|----------|-----------|
| &&       | Logical AND     |
| \|\|     | Logical OR |
| !*expr*  | Logical NOT|
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

#### `while` Loop
Text about while loops!  

Example:
```dart
while(!off()) {
    doSomething();
}
```

#### `do-while` Loop
Text about do-while!  

Example:
```dart
do {
  printLine();
} while (!atEndOfPage());

```

#### `for` Loop
Text about for loops  

Example:
```dart
var message = StringBuffer('Dart is fun');
for (var i = 0; i < 5; i++) {
  message.write('!');
}
```
#### `for-in` Loop
For-in Loops  

Example:
```dart
for (final candidate in candidates) {
  candidate.interview();
}
```

#### `forEach()` Method
The forEach() method!!!  

Example:
```dart
list.forEach((element) => print(element));
```


### Functions



## References

[1] https://dart.dev/ \
[2] https://en.wikipedia.org/w/index.php?title=Dart_(programming_language)&oldid=1174763841 \
[3] https://www.jetbrains.com/help/idea/dart.html


