import 'package:flutter/material.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("test")),
      body: Center(
        child: ElevatedButton(
          child: const Text("Open route"),
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
        )
      )
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key, required this.name, required this.age});

  final String name;
  final int age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("test")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(name),
        ),
      ),
    );
  }
}
