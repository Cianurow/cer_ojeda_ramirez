import 'package:flutter/material.dart';
import 'package:cer_ojeda_ramirez/widgets/userProfile.dart';

UserList userList = UserList();

class Profile extends StatelessWidget {
  final String user;

  const Profile({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Buscar el usuario correspondiente al nombre proporcionado
    User? userProfile = UserList.users.firstWhere(
      (user) => user.name == this.user,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('${this.user}'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/${userProfile.name}.webp',
              width: 300,
              height: 300,
            ),
            Text('Ciudad: ${userProfile.city}'),
            Text('Edad: ${userProfile.age}'),
            Text('Asesinatos: ${userProfile.kill}'),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Volver'),
            ),
          ],
        ),
      ),
    );
  }
}
