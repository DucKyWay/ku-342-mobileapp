import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './components/bottom_navbar.dart';
import './screens/about_screen.dart';
import './screens/menu_screen.dart';
import './screens/settings_screen.dart';

class RestaurantUpgradeApp extends StatelessWidget {
  const RestaurantUpgradeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green.shade700),
        fontFamily: GoogleFonts.kanit().fontFamily,
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
