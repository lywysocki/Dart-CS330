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
```
C:\> choco install dart-sdk
```
2. To upgrade the Dart SDK:
```
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
```
void main() {
  print('Hello World!');
}
```
#### Comments in Dart
##### Single-line comments
Single-line comments in Dart begin with `//`  
  
Example:
```
void main() {
  // TODO: Print "Hello World!"
  print('Hello World!');
}
```
##### Multi-line comments
Mult-line comments in Dart begin with `/*` and end with `*/`  
  
Example:
```
/*
 * A program that displays "Hello World!" to the console
 @retuns void
*/
void main() {
  print('Hello World!');
}
```

## References

[1] https://dart.dev/ \
[2] https://en.wikipedia.org/w/index.php?title=Dart_(programming_language)&oldid=1174763841 \
[3] https://www.jetbrains.com/help/idea/dart.html

