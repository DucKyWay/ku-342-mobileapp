import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'product_model.dart';

Future<Product> fetchProduct() async {
 final response = await http
   .get(Uri.parse('https://fakestoreapi.com/products/1'));

   if (response.statusCode == 200) {
    List<dynamic> data = json.decode(response.body);
    return Product.fromJson(json.decode(response.body));
  } else {
    throw Exception("Failed to load product: ${response.statusCode}");
  }
}

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  late Future<Product> futureProduct;
  @override
  void initState() {
    super.initState();
    futureProduct = fetchProduct();
  }

  //..
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Product Details')),
        body: Center(
          child: FutureBuilder<Product>(
            future: futureProduct,
            builder: (context, x) {
              if (x.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator(); // แสดงสถานะ Loading
              } else if (x.hasError) {
                return Text('Error: ${x.error}'); // แสดง Error ถ้าโหลดล้มเหลว
              } else if (x.hasData) {
                Product product = x.data!; // โหลดข้อมูลส าเร็จ
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(product.image, height: 150),
                    Text(product.title, style: const TextStyle(fontSize: 20)),
                    Text(
                      '\$${product.price}',
                      style: const TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Rating: ${product.rating.rate} (${product.rating.count} reviews)',
                    ),
                  ],
                );
              } else {
                return const Text('No data');
              }
            },
          ),
        ),
      ),
    );
  }
}