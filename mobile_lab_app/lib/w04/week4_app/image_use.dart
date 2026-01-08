import 'package:flutter/material.dart';

class Week4 extends StatelessWidget {
  const Week4({super.key});

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
              Image.asset("assets/images/w04_week4_app/owl.jpg"),
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