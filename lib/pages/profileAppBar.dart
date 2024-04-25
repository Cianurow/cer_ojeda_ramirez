import 'package:cer_ojeda_ramirez/pages/Profile.dart';
import 'package:cer_ojeda_ramirez/pages/home.dart';
import 'package:cer_ojeda_ramirez/pages/login.dart';
import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget {
  final String user;

  const ProfileAppBar({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido $user'),
        actions: [
          PopupMenuButton(
            icon: Image.asset(
              'assets/images/${this.user}.webp',
              width: 70,
              height: 70,
            ),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Color(0xFF4A7DDF),
                  ),
                  title: Text('Perfil'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Profile(user: user);
                        },
                      ),
                    );
                  },
                ),
              ),
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Color.fromARGB(255, 222, 68, 68),
                  ),
                  title: Text('Cerrar sesión'),
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage();
                        },
                      ),
                      (Route<dynamic> route) => false,
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(0),
        child: Home(),
      ),
    );
  }
}
