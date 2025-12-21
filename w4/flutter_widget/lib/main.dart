import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const MyHomePage(title: 'Yindeetonrub Restaurant'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text(title),
            floating: true, // ให้ AppBar ปรากฏเมื่อเลื่อนขึ้นเล็กน้อย
            pinned: true,   // ให้ AppBar ค้างไว้ด้านบน
          ),
          SliverPadding(
            padding: const EdgeInsets.all(10),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,       // แสดง 2 คอลัมน์
                mainAxisSpacing: 10,     // ระยะห่างระหว่างแถว
                crossAxisSpacing: 10,    // ระยะห่างระหว่างคอลัมน์
                childAspectRatio: 0.8,   // อัตราส่วน กว้าง:สูง (ปรับตามความเหมาะสมของ MenuBox)
              ),
              delegate: SliverChildListDelegate(
                [
                  const MenuBox(
                    name: "Steak",
                    price: 150,
                    image: "steak.webp",
                  ),
                  const MenuBox(
                    name: "Porkchop",
                    price: 120,
                    image: "steak.webp",
                  ),
                  // คุณสามารถเพิ่มเมนูอื่นๆ ตรงนี้ได้เลย
                ],
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
    required this.name,
    required this.price,
    required this.image
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
              "assets/images/$image",
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text("฿$price", style: const TextStyle(color: Colors.green)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

/*
โดยให้มีเมนูอาหารอย่างน้อย 8 เมนู
มีการแสดงภาพ ชื่อ และราคาอาหาร
มีการเรียกใช้ icon เช่น icon ตะกร้าสินค้า
*/