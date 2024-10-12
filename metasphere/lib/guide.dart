// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:metasphere/guideregi.dart';
import 'package:metasphere/home.dart';

// import 'package:rough_code/guideregi.dart';
// import 'package:rough_code/main.dart';




class Guide extends StatelessWidget {
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
          style: TextStyle(
            color: Color.fromRGBO(26, 35, 126, 1),
            fontWeight: FontWeight.bold,
            fontSize: 29.0,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Text(
                'Tips:',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const TipCard(
              text:
                  'An entrepreneur should not just be passionate about their business idea. They need to be committed and "in it for the long haul".',
            ),
            const SizedBox(height: 20),
            const TipCard(
              text:
                  'Add the human touch to your business deck by always talking about the team which makes it possible.',
            ),
            const SizedBox(height: 20),
            const TipCard(
              text:
                  'Many first-time founders will make the mistake of offering too much equity to secure a relationship or investor, only to find out that the return just wasn’t there.',
            ),
            
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:(context) =>  guideregi()) );
                },
                // ignore: sort_child_properties_last
                child: const Text('Create'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.indigo[900],shadowColor: Colors.grey,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  textStyle: const TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TipCard extends StatelessWidget {
  final String text;

  const TipCard({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 19,
          color: Color.fromRGBO(26, 35, 126, 1),fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}