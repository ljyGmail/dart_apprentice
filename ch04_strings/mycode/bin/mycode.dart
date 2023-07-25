import 'package:characters/characters.dart';

void main() {
  // # How Computer Represent Strings
  // # Unicode
  // ## Strings and Characters in Dart
  print('Hello, Dart!');
  var greeting = 'Hello, Dart';
  greeting = 'Hello, Flutter!';
  print(greeting);
  // ## Getting Characters
  const letter = 'a';
  print(letter.codeUnits);
  var salutation = 'Hello!';
  print(salutation.codeUnits);

  const dart = '🎯';
  print(dart.codeUnits);
  print(dart.runes);

  // ## Unicode Grapheme Clusters
  const flag = '🇲🇳';
  print(flag.runes);

  const family = '👨‍👩‍👧‍👦';
  print(family.runes);
  print(family.length);
  print(family.codeUnits.length);
  print(family.runes.length);

  print(family.characters.length);

  // # Single Quotes vs. Double Quotes
  print('I like cats');
  print("I like cats");
  print("my cat's food");
  print('my cat\'s food');

  // # Concatenation
  var message = 'Hello' ' my name is ';
  const name = 'Ray';
  message += name;
  print(message);

  // # Interpolation
  const student = 'Ray';
  const introduction = 'Hello my name is $student';
  print(introduction);

  const oneThird = 1 / 3;
  // const sentence = 'One third is $oneThird';
  final sentence = 'One third is ${oneThird.toStringAsFixed(3)}';
  print(sentence);

  // # Multi-Line String
  const bigString = '''
You can have a string
that contains multiple
lines
by
doing this.''';
  print(bigString);

  const oneLine = 'This is only '
      'a single '
      'line '
      'at runtime.';
  print(oneLine);

  const twoLine = 'This is\ntwo lines';
  print(twoLine);

  // raw string
  const rawString = r'My name \n is $name.';
  print(rawString);

  // # Inserting Characters From Their Codes
  print('I \u2764 Dart\u0021');

  print('I love \u{1F3AF}');
}
