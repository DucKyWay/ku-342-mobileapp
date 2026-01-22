import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mobile_lab_app/w08/03/counter_provider.dart';

class Counter03Screen extends StatelessWidget {
  const Counter03Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<Counter03Provider>(context);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Example"),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_right),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Counter03DecreaseScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${counterProvider.counter}",
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: counterProvider.increment, 
              child: const Text("Increase")
            ),
          ],
        ),
      ),
    );
  }
}

class Counter03DecreaseScreen extends StatelessWidget {
  const Counter03DecreaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<Counter03Provider>(context);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${counterProvider.counter}",
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: counterProvider.decrement, 
              child: const Text("Decrease")
            ),
          ],
        ),
      ),
    );
  }
}