void main() {
  const input = 12;
  final output = compliment(input);
  print(output);

  helloPersonAndPet('Fluffy', 'Chris');
  // helloPersonAndPet(); // compiler error

  print(fullName('Ray', 'Wenderlich'));
  print(fullName('Albert', 'Einstein', 'Professor'));

  print('withinTolerance(5): ${withinTolerance(5)}');
  print('withinTolerance(15): ${withinTolerance(15)}');
  print('withinTolerance(9, 7, 11): ${withinTolerance(9, 7, 11)}');
  print('withinTolerance(9, 7): ${withinTolerance(9, 7)}');

  print(
      'withinTolerance2(9, min: 7, max: 11): ${withinTolerance2(9, min: 7, max: 11)}');

  // parameter order can be changed
  print(
      'withinTolerance2(9, max: 11, min: 7): ${withinTolerance2(9, max: 11, min: 7)}');

  // optional parameters can also go before or after the positional parameter
  print(
      'withinTolerance2(min: 7, max: 11, 9): ${withinTolerance2(min: 7, max: 11, 9)}');
  print(
      'withinTolerance2(min: 7, 9, max: 11): ${withinTolerance2(min: 7, 9, max: 11)}');

  // the following function calls are also valid:
  print('withinTolerance2(5): ${withinTolerance2(5)}');
  print('withinTolerance2(15): ${withinTolerance2(15)}');
  print('withinTolerance2(5, min: 7): ${withinTolerance2(5, min: 7)}');
  print('withinTolerance2(15, max: 20): ${withinTolerance2(15, max: 20)}');

  print(
      'withinTolerance3(value: 9, min: 7, max: 11): ${withinTolerance3(value: 9, min: 7, max: 11)}');
}

// # Function Basics
// ## Don't Repeat Yourself
// ## Anatomy of a Dart Function
String compliment(int number) {
  return '$number is a very nice number.';
}

// # Parameters
// ## USing Multiple Parameters
void helloPersonAndPet(String person, String pet) {
  print('Hello, $person, and your furry friend, $pet!');
}

// ## Making Parameters Optional
String fullName(String first, String last, [String? title]) {
  if (title != null) {
    return '$title $first $last';
  } else {
    return '$first $last';
  }
}

// ## Providing Default Values
bool withinTolerance(int value, [int min = 0, int max = 10]) {
  return min <= value && value <= max;
}

// ## Naming Parameters
bool withinTolerance2(int value, {int min = 0, int max = 10}) {
  return min <= value && value <= max;
}

// ## Making Named Parameters Required
bool withinTolerance3({
  required int value,
  int min = 0,
  int max = 10,
}) {
  return min <= value && value <= max;
}

// # Writing Good Functions
// ## Avoiding Side Effects
/*
// function with side effects
void hello() {
  print('Hello!');
}
*/

// function without side effects
String hello() {
  return 'Hello!';
}

// another function with side effects
var myPreciousData = 5782;

String anInnocentLookingFunction(String name) {
  myPreciousData = -1;
  return 'Hello, $name. Heh, heh, heh.';
}

// ## Doing Only One Thing

// ## Choosing Good Names

// # Optional Types
// => the same as compliment2(dynamic number)
compliment2(number) {
  return '$number is a very nice number.';
}

// # Arrow Functions
/*
int add(int a, int b) {
  return a + b;
}
*/

int add(int a, int b) => a + b;

/*
void printTripled(int number) {
  final tripled = number * 3;
  return tripled;
}
*/

void printTripled(int number) => print(number * 3);
