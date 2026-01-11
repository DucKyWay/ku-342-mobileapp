import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({
    super.key,
    required this.name,
    required this.price,
    required this.image,
  });

  final String name;
  final double price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu: $name'),
        // actions: [
        //   IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.arrow_back))
        // ],
      ),
      body: Expanded(
        child: MenuDescription(name: name, price: price, image: image),
      ),
    );
  }
}

class MenuDescription extends StatelessWidget {
  const MenuDescription({
    super.key,
    required this.name,
    required this.price,
    required this.image,
  });

  final String name;
  final double price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset('assets/images/$image'),
          Text(name),
          Text(price.toString()),
        ],
      ),
    );
  }
}
