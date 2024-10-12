// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:metasphere/accsettings.dart';
//import 'package:rough_code/accsettings.dart';


void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SellerHome(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class SellerHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color.fromRGBO(26, 35, 126, 1)),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(context) => accsettings()) );// Navigates back to the previous screen
          },
        ),
        title: const Text(
          'Metasphere',
          style: TextStyle(
            color: Color.fromRGBO(26, 35, 126, 1),
            fontWeight: FontWeight.bold,
            fontSize: 29.0,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Removed Row with ElevatedButtons
          Expanded(
            child: ListView(
              children: const [
                ProductCard(
                  imageUrl: 'assets/SELLERSHOME 1.jpeg',
                  productName: 'CAPTIVATING EARRINGS',
                ),
                ProductCard(
                  imageUrl: 'assets/SELLERSHOME 2.jpeg',
                  productName: 'SET OF 3',
                ),
                ProductCard(
                  imageUrl: 'assets/SELLERSHOME 3.png',
                  productName: 'SET OF 2',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String productName;

  // ignore: use_key_in_widget_constructors
  const ProductCard({required this.imageUrl, required this.productName});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200, // Increased height for image container
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          ListTile(
            title: Text(
              productName,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {
                
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}