// # Custom Constructors
class User {
  // ## Long-Form Constructor
  /*
  User(int id, String name) {
    this.id = id;
    this.name = name;
  }
  */

  // ## Short-Form Constructor
  // User(this.id, this.name);

  // # Optional and Named Parameters
  // ## Adding Named Parameters for User
  // ## Making Classes Immutable
  // ## Benefits of Using Const
  const User({int id = 0, String name = 'anonymous'})
      : _name = name,
        _id = id; /*{
    print('User name is $name');
  }*/

  // # Named Constructors
  /*
  User.anonymous() {
    id = 0;
    name = 'anonymous';
  }
  */

  // # Forwarding Constructors
  // User.anonymous() : this(0, 'anonymous');
  const User.anonymous() : this();

  /*
  User.fromJson(Map<String, Object> json)
      : _id = json['id'] as int,
        _name = json['name'] as String;
  */

  // # Factory Constructors
  factory User.ray() {
    return User(id: 42, name: 'Ray');
  }

  factory User.fromJson(Map<String, Object> json) {
    final userId = json['id'] as int;
    final userName = json['name'] as String;
    return User(id: userId, name: userName);
  }

  // # Constant Constructors
  // ## Making Properties Immutable
  final int _id;
  final String _name;

  String toJson() {
    return '{"id":$_id,"name":"$_name"}';
  }

  @override
  String toString() {
    return 'User(id:$_id, name: $_name)';
  }
}

// # Constructor Comparisons
/*
* Forwarding on non-forwarding
* Named or unnamed
* Generative or factory
* Constant or not constant
* With parameters or without
* Short-form or long-form
* Public or private
*/