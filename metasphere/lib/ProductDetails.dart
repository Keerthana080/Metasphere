// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:metasphere/BusinessAnalytics.dart';
import 'package:metasphere/home.dart';
// import 'package:rough_code/businessanalytics.dart';
// import 'package:rough_code/main.dart';


void main() {
  runApp(details());
}

// ignore: use_key_in_widget_constructors, camel_case_types
class details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductDetails(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}

// ignore: use_key_in_widget_constructors
class ProductDetails extends StatelessWidget {
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
        padding: const EdgeInsets.all(16.0), // Added padding below AppBar
        child: ListView(
          children: [
            const Text(
              'Product Details',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16), // Added SizedBox for spacing
            SizedBox(
              height: MediaQuery.of(context).size.height / 4,
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      // Navigate to previous advertisement
                    },
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[
                            300], // Changed advertisement container color to grey
                        borderRadius:
                            BorderRadius.circular(10.0), // Rounded corners
                      ),
                      child: const Center(child: Text('Advertisement Image')),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      // Navigate to next advertisement
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16), // Added SizedBox for spacing
            GestureDetector(
              onTap: () {
                // Handle onTap
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Product name',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,color: Color.fromRGBO(26, 35, 126, 1),
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 8), // Added SizedBox for spacing
                  Container(
                    height: 55,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10.0), // Rounded corners
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                // Handle onTap
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Description',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,color: Color.fromRGBO(26, 35, 126, 1),
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 8), // Added SizedBox for spacing
                  Container(
                    height: 55,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10.0), // Rounded corners
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                // Handle onTap
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Price',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,color: Color.fromRGBO(26, 35, 126, 1),
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 8), // Added SizedBox for spacing
                  Container(
                    height: 55,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10.0), // Rounded corners
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                // Handle onTap
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Category',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,color: Color.fromRGBO(26, 35, 126, 1),
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 8), // Added SizedBox for spacing
                  Container(
                    height: 55,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10.0), // Rounded corners
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16), // Added SizedBox for spacing
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) =>  BusinessAnalytics()) );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo[900],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text('Next'),
                ),
                const SizedBox(height: 16), // Added SizedBox for spacing
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  
                ),
              ],
            ),
            const SizedBox(height: 16), // Added SizedBox for spacing
          ],
        ),
      ),
    );
  }
}