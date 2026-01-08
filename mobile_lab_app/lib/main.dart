import 'package:flutter/material.dart';
import 'package:mobile_lab_app/w01/main.dart';
import 'package:mobile_lab_app/w04/flutter_widget/flutter_widget.dart';
import 'package:mobile_lab_app/w04/product_layout_app/product_layout.dart';
import 'package:mobile_lab_app/w04/week4_app/image_use.dart';
import 'package:mobile_lab_app/w05/hw05_layout_widget/cafe_home_screen.dart';
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
  const MyApp({ super.key });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue), // only ProfileScreen()

      /* w01 */
      // home: FirstApp(),

      /* w04 */
      // home: Week4(),
      // home: FlutterWidget(title: "Yindeetonrub Restaurant"),
      // home: ProductLayout(title: "Product"),

      /* w05 */
      // home: const HorizontalScroll(),
      // home: const PageViewScreen(),
      // home: const Exercise01(),
      // home: ProfileScreen(),
      home: CafeHomePage(),
      
      /* w06 */
      // home: CalculatorPage(),

      /* w07 */
      // home: FirstRoute(),
      // home: RouteIndex(),
      // home: BottomNavbar(),
      // home: TabBarDemo(),
    );
  }
}