import 'package:flutter/material.dart';

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
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(title: const Text("สวัสดี"), centerTitle: true),
        body: Center(
          child: Column(
            children: [
              Text(
                "Hello",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset("assets/images/owl.jpg"),
              const Image(
                image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5oR8vvfmKtC7123X2Oq2yefmkpMde6Y75tg&s'),
              ),
            ]
          ),
        ),
      ),
    );
  }
}
