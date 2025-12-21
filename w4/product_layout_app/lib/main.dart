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
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: "Product"),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2, 10, 2, 10),
        children: <Widget>[
          ProductBox(
            name: "Goat",
            description: "Goat can gore you.",
            price: 500000,
            image: "goat.png",
          ),
          ProductBox(
            name: "Copper Ingot",
            description: "Copper ingots are metal ingots that can be obtained by smelting up.",
            price: 20,
            image: "copper_ingot.png",
          ),
          ProductBox(
            name: "Calcite",
            description: "Calcite in Minecraft is a decorative.",
            price: 1000,
            image: "calcite.png",
          ),
          ProductBox(
            name: "Spyglass",
            description: "a utility item for zooming in on distant objects.",
            price: 500,
            image: "spyglass.png",
          ),
          ProductBox(
            name: "2 Candles",
            description: "placing two candles in the same spot creates a taller stack.",
            price: 15,
            image: "two_candles.png",
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  const ProductBox({
    super.key,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });

  final String name;
  final String description;
  final double price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/images/$image",),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(description),
                    Text("Price: $price"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
