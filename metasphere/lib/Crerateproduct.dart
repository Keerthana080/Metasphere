import 'package:flutter/material.dart';
import 'package:metasphere/home.dart';

//import 'package:rough_code/main.dart';




// ignore: use_key_in_widget_constructors
class Createproduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.indigo),
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
        padding: const EdgeInsets.only(
          top: 16.0,
          left: 16.0,
          right: 16.0,
          bottom: 16.0,
        ), // Added padding below AppBar
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                      child: const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.black,
                              size: 30,
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Add Image or File',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
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
            Expanded(
              child: ListView(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Handle onTap
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Product Name',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 8), // Added SizedBox for spacing
                        Container(
                          height: 55,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius:
                                BorderRadius.circular(10.0), // Rounded corners
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
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 8), // Added SizedBox for spacing
                        Container(
                          height: 55,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius:
                                BorderRadius.circular(10.0), // Rounded corners
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
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 8), // Added SizedBox for spacing
                        Container(
                          height: 55,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius:
                                BorderRadius.circular(10.0), // Rounded corners
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
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 8), // Added SizedBox for spacing
                        Container(
                          height: 55,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius:
                                BorderRadius.circular(10.0), // Rounded corners
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16), // Added SizedBox for spacing
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(26, 35, 126, 1),
              ),
              child: IconButton(
                onPressed: () {
                  // Handle home icon press
                 Navigator.push(context, MaterialPageRoute(builder:(context) => const Home()) );
                },
                icon: const Icon(
                  Icons.upload,
                  color: Colors.white, 
                ),
                iconSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}