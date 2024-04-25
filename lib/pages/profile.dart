import 'package:cer_ojeda_ramirez/widgets/userProfile.dart';
import 'package:flutter/material.dart';

UserList userList = UserList();

class Profile extends StatelessWidget {
  final String user;

  const Profile({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    User? userProfile = UserList.users.firstWhere(
      (user) => user.name == this.user,
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 27, 27, 27),
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
            Text(
              'Informacíon de cuenta:',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            Container(
              width: 100,
              child: Divider(
                color: Colors.white,
                thickness: 2,
              ),
            ),
            Text(
              'Pais: ${userProfile.city}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            Container(
              width: 100,
              child: Divider(
                color: Colors.white,
                thickness: 2,
              ),
            ),
            Text(
              'Edad: ${userProfile.age}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            Container(
              width: 100,
              child: Divider(
                color: Colors.white,
                thickness: 2,
              ),
            ),
            Text(
              'Asesinatos: ${userProfile.kill}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            Container(
              width: 100,
              child: Divider(
                color: Colors.white,
                thickness: 2,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(202, 255, 255, 255),
              ),
              child: Text('Volver',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xFF4A7DDF))),
            ),
          ],
        ),
      ),
    );
  }
}
