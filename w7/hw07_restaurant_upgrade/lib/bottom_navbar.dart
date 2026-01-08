import 'package:flutter/material.dart';
import 'package:hw07_restaurant_upgrade/about_screen.dart';
import 'package:hw07_restaurant_upgrade/home_screen.dart';
import 'package:hw07_restaurant_upgrade/settings_screen.dart';

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