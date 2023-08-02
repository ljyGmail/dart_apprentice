import 'package:mycode/user.dart';

void main() {
  // final user = User(42, 'Ray');
  // final user = User(id: 42, name: 'Ray');
  const user = User(id: 42, name: 'Ray');
  print(user);

  const anonymousUser = User.anonymous();
  print(anonymousUser);

  // # Initializer Lists
  const vicki = User(id: 24, name: 'Vicki');
  // ## Why Aren't the Private Properties Private?
  // vicki._name = 'Nefarious Hacker';
  print(vicki);

  final map = {'id': 10, 'name': 'Sandra'};
  final sandra = User.fromJson(map);
  print(sandra);
}

// # Default Constructor
class Address {
  var value = '';
}

// equivalent to the following:
/*
class Address {
  Address();
  var value = '';
}
*/