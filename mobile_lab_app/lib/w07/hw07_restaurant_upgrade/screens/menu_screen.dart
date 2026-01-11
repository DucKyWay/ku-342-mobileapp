import 'package:flutter/material.dart';
import 'package:mobile_lab_app/w07/hw07_restaurant_upgrade/constants/menu_constant.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    MenuItem menu = menuItems.where((item) => item.name == name).toList()[0];
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu: ${menu.name}'),
        backgroundColor: Colors.green.shade500,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          MenuCard(item: menu),
          SizedBox(height: 20),
          Text(
            'Description: ${menu.description}',
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  const MenuCard({super.key, required this.item});

  final MenuItem item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/hw07_restaurant_upgrade/${item.image}',
          height: 200,
          fit: BoxFit.contain,
        ),
        Column(
          children: [
            Text( 
              item.name,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Text(
              'Price: ${item.price.toString()}',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ],
    );
  }
}
