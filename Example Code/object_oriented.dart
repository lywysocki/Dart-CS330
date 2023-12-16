/**
 * A simple example of how object oriented programming works in Dart.
 */

// Parent class - Person
class Person {
  String name;
  int age;

  // constructor
  Person(this.name, this.age);

  // function to introduce the person
  void introduceYourself() {
    print('Hello, my name is $name and I am $age years old.');
  }
}

// Child class - Student inheriting from Person
class Student extends Person {
  String school;

  // constructor calling parent class constructor & initializing school
  Student(String name, int age, this.school) : super(name, age);

  // student specific function
  void study() {
    print('$name is studying at $school.');
  }
}

void main() {
  // instantiating a Person object
  var person = Person('Laura', 20);
  person.introduceYourself();

  // instantiating a Student object
  var student = Student('Jake', 20, 'Wentworth Institute of Technology');
  student.introduceYourself();
  student.study();

  // modifying variables
  person.name = 'Laura';
  person.introduceYourself();

  student.age = 21;
  student.introduceYourself();
}
