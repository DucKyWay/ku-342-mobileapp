import 'package:flutter/material.dart';
import '../constants/menu_constant.dart';

const String imagePath = "assets/images/hw08_restaurant_cart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text("Yindeetonrub Restaurant", style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.green.shade500,
            pinned: true,
            actions: [
              IconButton(
                icon: Icon(Icons.shopping_cart_outlined, color: Colors.white,),
                onPressed: () {
                  Navigator.pushNamed(context, '/cart');
                },
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
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return MenuBox(item: menuItems[index]);
                },
                childCount: menuItems.length,
              ),
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
    required this.item,
  });

  final MenuItem item;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/menu/${item.name}');
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Image.asset(
                "$imagePath/${item.image}",
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
                          item.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "฿${item.price}",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.red[800],
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.add_shopping_cart, color: Colors.grey),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
