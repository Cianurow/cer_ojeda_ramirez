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
              decoration: InputDecoration(
                labelText: 'Usuario',
                labelStyle: TextStyle(color: Color(0xFF4A7DDF)),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF4A7DDF)),
                ),
              ),
              onChanged: (value) {
                _selectedUser = value;
                print(value);
              }),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                labelText: 'contraseña',
                labelStyle: TextStyle(color: Color(0xFF4A7DDF))),
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
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(202, 255, 255, 255),
              ),
              child: Text('Iniciar sesión',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xFF4A7DDF))))
        ],
      ),
    );
  }
}
