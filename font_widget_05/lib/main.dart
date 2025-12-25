import 'package:flutter/material.dart';
import 'package:font_widget_05/exercise_01.dart';
import 'package:font_widget_05/horizontal_scroll.dart';
import 'package:font_widget_05/page_view_screen.dart';

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
      // home: const HorizontalScroll(),
      // home: const PageViewScreen(),
      home: const Exercise01(),
    );
  }
}