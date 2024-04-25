class User {
  final String name;
  final String city;
  final String age;
  final String kill;

  User({
    required this.name,
    required this.city,
    required this.age,
    required this.kill,
  });
}

class UserList {
  static List<User> users = [
    User(name: 'Shinobi', city: 'Indonesia', age: '47', kill: '33'),
    User(name: 'Adjudicator', city: 'Estados Unidos', age: '52', kill: '41'),
    User(name: 'Harbinger', city: 'Estados Unidos', age: '58', kill: '67'),
  ];
}
