import 'package:flutter/material.dart';


class ShopPage extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'Apex Legends',
      price: 0,
    ),
    Product(
      name: 'Pummel Party',
      price: 9.99,
    ),
    Product(
      name: 'TEKKEN 8',
      price: 19.99,
    ),
    Product(
      name: 'VALORANT',
      price: 0,
    ),
    Product(
      name: 'Elden Ring',
      price: 12.99,
    ),
    Product(
      name: 'Bloodborne',
      price: 15.99,
    ),
    Product(
      name: 'Death Stranding',
      price: 29.99,
    ),
    Product(
      name: 'Genshin Impact',
      price: 0,
    ),
    Product(
      name: 'Honkai: Star Rail',
      price: 0,
    ),
    Product(
      name: 'Final Fantasy 16',
      price: 39.99,
    ),
    Product(
      name: 'Dead by Daylight',
      price: 9.99,
    ),
    Product(
      name: 'Alan Wake 2',
      price: 14.99,
    ),

    // Add more products here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop Page'),backgroundColor: Color.fromARGB(255, 1, 202, 172),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
            trailing: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                // Add the product to the shopping cart
              },
            ),
          );
        },
      ),
    );
  }
}

class Product {
  final String name;
  final double price;

  Product({
    required this.name,
    required this.price,
  });
}