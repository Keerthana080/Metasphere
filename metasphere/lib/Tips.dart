import 'package:flutter/material.dart';
import 'package:metasphere/guide.dart';
import 'package:metasphere/home.dart';




// ignore: use_key_in_widget_constructors
class Tips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color.fromRGBO(26, 35, 126, 1)),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(context) => Guide()) );// Navigates back to the previous screen
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
            const Text(
              'Tips:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height /
                  5, // Make the "start typing" container a bit bigger
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(color: Colors.grey),
              ),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Start typing.....',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(26, 35, 126, 1),
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(16.0),
                ),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                onTap: () {
                  // Clear the hint text when the user taps on the text field
                },
              ),
            ),
            const SizedBox(height: 24), // Increase the space between containers
            Center(
              child: ElevatedButton(
                onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder:(context) => const Home()) );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo[900],
                  padding: const EdgeInsets.symmetric(
                      horizontal: 50, vertical: 15), // Make the button smaller
                ),
                child: const Text(
                  'Upload',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}