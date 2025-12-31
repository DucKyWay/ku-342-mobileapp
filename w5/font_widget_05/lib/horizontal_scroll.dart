import 'package:flutter/material.dart';

class HorizontalScroll extends StatelessWidget {
  const HorizontalScroll({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final List<int> items = List<int>.generate(5, (i) => i + 1);
    return ListView.builder(
      // Set the scroll direction to horizontal
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Container(
          width: 100.0, // Give each item a fixed width
          margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
          decoration: BoxDecoration(
            color: Colors.amber[((index + 1) * 100) % 900],
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Center(
            child: Text(
              'Item${items[index]}',
              style: const TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ),
        );
      },
    );
  }
}
