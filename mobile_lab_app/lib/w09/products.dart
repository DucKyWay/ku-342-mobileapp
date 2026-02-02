import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'product_model.dart';

Future<List<Product>> fetchProducts() async {
  try {
    final response = await http.get(
      Uri.parse('https://fakestoreapi.com/products'),
    );

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception("Failed to load product: ${response.statusCode}");
    }
  } catch (e) {
    throw Exception(e);
  }
}

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  late Future<List<Product>> futureProduct;
  @override
  void initState() {
    super.initState();
    futureProduct = fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Product Details')),
        body: FutureBuilder<List<Product>>(
          future: futureProduct,
          builder: (context, x) {
            if (x.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator(); // แสดงสถานะ Loading
            } else if (x.hasError) {
              return Text('Error: ${x.error}'); // แสดง Error ถ้าโหลดล้มเหลว
            } else if (x.hasData) {
              List<Product> products = x.data!;

              return ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Card(
                    margin: const EdgeInsets.all(8),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Image.network(product.image, height: 60, width: 60),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  product.title,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '\$${product.price} Rating: ${product.rating.rate} (${product.rating.count} reviews)',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            } else {
              return const Text('No data');
            }
          },
        ),
      ),
    );
  }
}
