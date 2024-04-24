import 'package:cer_ojeda_ramirez/pages/profileAppBar.dart';
import 'package:cer_ojeda_ramirez/widgets/userProfile.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  //final List listaAsesinos = ['Shinobi', 'Adjudicator', 'Harbinger'];

  @override
  Widget build(BuildContext context) {
    String? _selectedUser;
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          DropdownButtonFormField(
              items: UserList.users.map((user) {
                return DropdownMenuItem(
                  child: Text(user.name),
                  value: user.name,
                );
              }).toList(),
              decoration: InputDecoration(labelText: 'Usuario'),
              onChanged: (value) {
                _selectedUser = value;
                print(value);
              }),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(labelText: 'contraseña'),
          ),
          SizedBox(height: 15),
          ElevatedButton(
              onPressed: () {
                if (_selectedUser != null) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ProfileAppBar(user: _selectedUser!);
                      },
                    ),
                  );
                }
              },
              child: Text('Iniciar sesión'))
        ],
      ),
    );
  }
}
