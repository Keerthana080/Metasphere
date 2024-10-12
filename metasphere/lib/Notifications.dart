// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:metasphere/home.dart';
//import 'package:rough_code/main.dart';





// ignore: use_key_in_widget_constructors
class Notifications extends StatelessWidget {
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
            const Text(
              'Notifications',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
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
                        const SizedBox(height: 8), // Added SizedBox for spacing
                        Container(
                          height: 55,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.indigo[900],
                            borderRadius:
                                BorderRadius.circular(10.0), // Rounded corners
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.notifications,
                                  size: 20, color: Colors.white),
                              SizedBox(width: 8),
                              Text(
                                "Anu has liked your product",
                                style: TextStyle(
                                  fontSize: 18,color: Colors.white
                                 
                                ),
                              ),
                            ],
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
                        const SizedBox(height: 8), // Added SizedBox for spacing
                        Container(
                          height: 55,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.indigo[900],
                            borderRadius:
                                BorderRadius.circular(10.0), // Rounded corners
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.notifications,
                                  size: 20, color: Colors.white),
                              SizedBox(width: 8),
                              Text(
                                "Message from Mike Tails",
                                style: TextStyle(
                                  fontSize: 18,color:Colors.white
                                
                                ),
                              ),
                            ],
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
                        const SizedBox(height: 8), // Added SizedBox for spacing
                        Container(
                          height: 55,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.indigo[900],
                            borderRadius:
                                BorderRadius.circular(10.0), // Rounded corners
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.notifications,
                                  size: 20, color: Colors.white),
                              SizedBox(width: 8),
                              Text(
                                "Starx.company has sent an interest request",
                                style: TextStyle(
                                  fontSize: 17,color: Colors.white
                              
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
     
    );
  }
}