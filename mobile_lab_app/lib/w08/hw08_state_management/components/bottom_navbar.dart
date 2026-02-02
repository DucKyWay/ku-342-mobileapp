import 'package:flutter/material.dart';
import '../screens/about_screen.dart';
import '../screens/home_screen.dart';
import '../screens/settings_screen.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});
  
  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int indexBottomNav = 0;
  List widgetOption = const [HomeScreen(), AboutScreen(), SettingsScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetOption[indexBottomNav],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'About'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
        currentIndex: indexBottomNav,
        onTap: (value) => setState(() => indexBottomNav = value),
      ),
    );
  }
}