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
    User(name: 'Shinobi', city: 'Indonesians', age: '47', kill: '33'),
    User(name: 'Adjudicator', city: 'American', age: '52', kill: '41'),
    User(name: 'Harbinger', city: 'American', age: '58', kill: '67'),
  ];
}
