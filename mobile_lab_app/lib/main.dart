import 'package:flutter/material.dart';

import 'w05/font_widget/horizontal_scroll.dart';
import 'w05/font_widget/page_view_screen.dart';
import 'w05/font_widget/exercise_01.dart';

import 'w05/widget_tree/profile_screen.dart';

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
      // home: const HorizontalScroll(),
      // home: const PageViewScreen(),
      // home: const Exercise01(),
      home: ProfileScreen(),
    );
  }
}