import 'package:flutter/material.dart';
import 'package:hw07_restaurant_upgrade/components/bottom_navbar.dart';
import 'package:hw07_restaurant_upgrade/constants/menu_constant.dart';
import 'package:hw07_restaurant_upgrade/screens/about_screen.dart';
import 'package:hw07_restaurant_upgrade/screens/menu_screen.dart';
import 'package:hw07_restaurant_upgrade/screens/settings_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green.shade700),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const BottomNavbar(),
        '/about': (context) => const AboutScreen(),
        '/settings': (context) => const SettingsScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name != null && settings.name!.startsWith('/menu/')) {
          final parts = settings.name!.split('/');
          if (parts.length >= 3) {
            final name = parts[2];
            return MaterialPageRoute(
              builder: (context) =>
                MenuScreen(name: name),
            );
          }
        }
        return null;
      },
    );
  }
}
