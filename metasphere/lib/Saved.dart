// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:metasphere/home.dart';
//import 'package:rough_code/main.dart';



class Saved extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color.fromRGBO(26, 35, 126, 1)),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(context) => const Home()) );// Navigates back to the previous screen
          },
        ),
        title: const Text(
          'Metasphere',
          style: TextStyle(color: Color.fromRGBO(26, 35, 126, 1),fontSize: 29,fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
       body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Text(
                'Saved:',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            TipCard(
              text:
                  'TATA 1mg',
              imageUrl: 'assets/2nd image.jpeg', // Placeholder image URL
            ),
            SizedBox(height: 20),
            TipCard(
              text:
                  'SKYROOT',
              imageUrl: 'assets/7th image.png', // Placeholder image URL
            ),
            SizedBox(height: 20),
            TipCard(
              text:
                  'VIRGIO',
              imageUrl: 'assets/8th image.jpg', // Placeholder image URL
            ),
            
          ],
        ),
      ),
    );
  }
}

class TipCard extends StatelessWidget {
  final String text;
  final String imageUrl;

  const TipCard({required this.text, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Image.network(
            imageUrl,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}