import 'package:flutter/material.dart';
import 'package:mobile_lab_app/w07/04_tab_navbar/tab_bar_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue), // only ProfileScreen()

      /* w01 */
      // home: FirstApp(),

      /* w0x */
      // home: const HorizontalScroll(),
      // home: const PageViewScreen(),
      // home: const Exercise01(),
      // home: ProfileScreen(),
      
      /* w06 */
      // home: CalculatorPage(),

      /* w07 */
      // home: FirstRoute(),
      // home: RouteIndex(),
      // home: BottomNavbar(),
      home: TabBarDemo(),
    );
  }
}