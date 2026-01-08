import 'package:flutter/material.dart';

class FlutterWidget extends StatelessWidget {
  const FlutterWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text(title),
            pinned: true,
            actions: [
              IconButton(
                icon: Icon(Icons.shopping_cart_outlined),
                onPressed: () {},
              ),
            ],
          ),
          SliverPadding(
            padding: const EdgeInsets.all(10),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.8,
              ),
              delegate: SliverChildListDelegate([
                const MenuBox(name: "Steak", price: 200, image: "steak.webp"),
                const MenuBox(
                  name: "Cooked Porkchop",
                  price: 150,
                  image: "cooked_porkchop.webp",
                ),
                const MenuBox(
                  name: "Mushroom Stew",
                  price: 100,
                  image: "mushroom_stew.webp",
                ),
                const MenuBox(
                  name: "Rabbit Stew",
                  price: 120,
                  image: "rabbit_stew.webp",
                ),
                const MenuBox(name: "Cake", price: 170, image: "cake.png"),
                const MenuBox(name: "Cookie", price: 20, image: "cookie.webp"),
                const MenuBox(
                  name: "Pumpkin Pie",
                  price: 80,
                  image: "pumpkin_pie.webp",
                ),
                const MenuBox(
                  name: "Baked Potato",
                  price: 40,
                  image: "baked_potato.webp",
                ),
                const MenuBox(name: "Bread", price: 15, image: "bread.webp"),
                const MenuBox(name: "Apple", price: 10, image: "apple.webp"),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}


class MenuBox extends StatelessWidget {
  const MenuBox({
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
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Image.asset(
              "assets/images/w04_flutter_widget/$image",
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text("฿$price", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.red[800])),
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
