void main() {
  // # Data Types in Dart
  // ## Type Inference
  // ### Annotating Variables Explicitly
  // int myInteger = 10;
  // double myDouble = 3.14;

  // ### Creating Constant Variables
  // const int myInteger = 10;
  // const double myDouble = 3.14;

  // final int myInteger = 10;
  // final double myDouble = 3.14;
  // ### Letting the Compiler Infer the Type
  const myInteger = 10;
  const myDouble = 3.14;

  // ### Checking the Inferred Type in VS Code

  // ### Checking the Type at Runtime
  num myNumber = 3.14;
  print(myNumber is double); // => true
  print(myNumber is int); // => false

  print(myNumber.runtimeType); // => double

  // ## Type Conversion
  var integer = 100;
  var decimal = 12.5;
  // integer = decimal;
  // A value of type 'double' can't be assigned to a variable of type 'int'.

  integer = decimal.toInt();

  // ### Operators With Mixed Types
  const hourlyRate = 19.5;
  const hoursWorked = 10;
  // const totalCost = hourlyRate * hoursWorked; // double
  // const totalCost = (hourlyRate * hoursWorked).toInt();
  // Const variables must be initialized with a constant value.
  final totalCost = (hourlyRate * hoursWorked).toInt();

  // ### Ensuring a Certain Type
  // const wantADouble = 3;
  // final actuallyDouble = 3.toDouble();
  const double actuallyDouble = 3;
  const wantADouble = 3.0;

  // ### Casting Down
  num someNumber = 3;
  // print(someNumber.isEven);
  // The getter 'isEven' isn't defined for the type 'num'.
  final someInt = someNumber as int;
  print(someInt.isEven); // => false

  // final someDouble = someNumber as double;
  // type 'int' is not a subtype of type 'double' in type cast
  final someDouble = someNumber.toDouble();

  // # Object and dynamic Types
  // var myVariable = 42;
  // myVariable = "hello"; // compile-time error

  // dynamic myVariable = 42;
  // myVariable = 'hello'; // OK

  // var myVariable; // defaults to dynamic
  // myVariable = 42; // OK
  // myVariable = 'hello'; // OK

  Object? myVariable = 42;
  myVariable = 'hello'; // OK
}
