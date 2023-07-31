void main(List<String> arguments) {
  // # Creating an Object From a Class
  final user = User();

  // ## The Optional Keyword New
  // final user = new User();

  // # Assigning Value to Properties
  user.name = 'Ray';
  user.id = 42;

  // # Printing an Object
  print(
      'user: $user'); // => "Instance of 'User'"  before override the toString() method

  print('user.toJson(): ${user.toJson()}');

  // # Cascade Notation
  final user2 = User()
    ..name = 'Kodeco'
    ..id = 43;

  print('user2: $user2');

  // ---------
  final myObject = MyClass();
  final anotherObject = myObject;

  print('myObject.myProperty: ${myObject.myProperty}');
  anotherObject.myProperty = 2;
  print('myObject.myProperty: ${myObject.myProperty}');

  // ---------
  final myPassword = Password();
  final text = myPassword.plainText;
  print('text: $text');

  // ### Getters Don't Set
  // myPassword.plainText = '123456';

  final obfuscated = myPassword.obfuscated;
  print('obfuscated: $obfuscated');

  final myPassword2 = Password();
  myPassword2.plainText = r'Pa$$vv0Rd';
  final text2 = myPassword2.plainText;
  print('text2: $text2');

  final shortPassword = Password();
  shortPassword.plainText = 'aaa';
  final result = shortPassword.plainText;
  print('result: $result');

  // ---------
  final email = Email();
  email.value = 'ray@example.com';
  final emailString = email.value;
  print('emailString: $emailString');
}

// # Defining a Class
class User {
  int id = 0;
  String name = '';

  // # Adding Methods
  // ## Understanding Object Serialization
  // ## Adding a JSON Serialization Method
  String toJson() {
    return '{"id":$id,"name","$name"}';
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name)';
  }
}

// # Objects as References
class MyClass {
  var myProperty = 1;
}

// # Encapsulation
// ## Hiding the Internals
class Password {
  String _plainText = 'pass123';

  // ### Getter
  String get plainText => _plainText;

  // ### Calculated Properties
  String get obfuscated {
    final length = _plainText.length;
    return '*' * length;
  }

  // ### Setters
  // set plainText(String text) => _plainText = text;

  // ### Using Setters for Data Validation
  set plainText(String text) {
    if (text.length < 6) {
      print('Passwords must have 6 or more characters!');
      return;
    }
    _plainText = text;
  }
}

// ## NO Need to Overuse Getters And Setters
/*
class Email {
  String _value = '';

  String get value => _value;
  set value(String value) => _value = value;
}
*/
// The above class can be simplified to the following form:
class Email {
  String value = '';
}
