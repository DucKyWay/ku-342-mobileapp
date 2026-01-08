import 'package:flutter/material.dart';
import 'package:mobile_lab_app/w01/main.dart';
import 'package:mobile_lab_app/w06/calculator.dart';
import 'package:mobile_lab_app/w07/01_navigate/route.dart';
import 'package:mobile_lab_app/w07/02_routes/index.dart';
import 'package:mobile_lab_app/w07/03_bottom_navbar/buttom_navbar.dart';
import 'package:mobile_lab_app/w07/04_tab_navbar/tab_bar_demo.dart';
import 'w05/widget_tree/profile_screen.dart';
import 'w05/font_widget/exercise_01.dart';
import 'w05/font_widget/page_view_screen.dart';
import 'w05/font_widget/horizontal_scroll.dart';

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