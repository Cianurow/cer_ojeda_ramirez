import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:cer_ojeda_ramirez/tabs/tab_contract.dart';
import 'package:cer_ojeda_ramirez/tabs/tab_service.dart';
import 'package:cer_ojeda_ramirez/tabs/tab_hotel.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  List<Widget> _tabs = [TabContract(), TabService(), TabHotel()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF1F0A32),
        selectedItemColor: Color(0xFF7B10A1),
        unselectedItemColor: Color(0xFF4A7DDF),
        selectedIconTheme: IconThemeData(
          opacity: 1.0,
          color: Color(0xFF7B10A1),
        ),
        unselectedIconTheme: IconThemeData(
          opacity: 0.5,
          color: Color(0xFF4A7DDF),
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.briefcase),
            label: 'Contratos',
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.vacuum),
            label: 'Servicios',
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.roomService),
            label: 'Hoteles',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
