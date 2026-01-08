import 'package:flutter/material.dart';
import 'package:mobile_lab_app/w07/01_navigate/route.dart';

class RouteIndex extends StatelessWidget {
  const RouteIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstRoute(),
        '/second': (context) => const SecondRoute(name: "Niji", age: 19),
      },
    );
  }
}