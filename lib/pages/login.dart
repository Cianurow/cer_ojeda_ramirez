import 'package:cer_ojeda_ramirez/pages/form.dart';
import 'package:flutter/material.dart';
import 'package:cer_ojeda_ramirez/widgets/userProfile.dart';

UserList userList = UserList();

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 41, 25, 85),
        appBar: AppBar(
          title: Text('Inicio de Sesión'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(40),
            child: Column(
              children: [
                Title(
                    color: Color(0xFF7B10A1),
                    child: Text(
                      'The table',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF7B10A1),
                      ),
                    )),
                SizedBox(height: 15),
                Image.asset(
                  'assets/images/app_logo.webp',
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 15),
                LoginForm(),
              ],
            ),
          ),
        ));
  }
}
