// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:metasphere/ProductDetails.dart';
//import 'package:rough_code/productdetails.dart';

void main() {
  runApp(analytics());
}

// ignore: camel_case_types
class analytics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BusinessAnalytics(),
    );
  }
}


class BusinessAnalytics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color.fromRGBO(26, 35, 126, 1)),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(context) => ProductDetails()) );// Navigates back to the previous screen
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
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: StartupContainer(
            title: 'PALMONAS',
            imageUrl: 'assets/SELLERSHOME 2.jpeg', // Placeholder image
            likes: 120,
            views: 300,
          ),
        ),
      ),
    );
  }
}

class StartupContainer extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int likes;
  final int views;

  // ignore: use_super_parameters
  const StartupContainer({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.likes,
    required this.views,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8, // Add shadow
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0), // Rounded corners
      ),
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(15.0)),
            child: Image.network(imageUrl, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(26, 35, 126, 1), // Title color
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _StatCard(label: 'Likes', value: likes),
                _StatCard(label: 'Views', value: views),
              ],
            ),
          ),
          const SizedBox(height: 8.0),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String label;
  final int value;

  // ignore: use_super_parameters
  const _StatCard({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value.toString(),
          style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4.0),
        Text(
          label,
          style: const TextStyle(fontSize: 16.0, color: Colors.grey),
        ),
      ],
    );
  }
}