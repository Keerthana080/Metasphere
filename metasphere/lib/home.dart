// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:metasphere/Crerateproduct.dart';
import 'package:metasphere/Notifications.dart';
import 'package:metasphere/Registration.dart';
import 'package:metasphere/Saved.dart';
import 'package:metasphere/accsettings.dart';
import 'package:metasphere/chat.dart';
import 'package:metasphere/guide.dart';
// import 'package:rough_code/accsettings.dart';
// import 'package:rough_code/chat.dart';
// import 'package:rough_code/createproduct.dart';
// import 'package:rough_code/guide.dart';
// import 'package:rough_code/notifications.dart';
// import 'package:rough_code/registration.dart';
// import 'package:rough_code/saved.dart';
import 'dart:async';

import 'package:metasphere/signin.dart';
//import 'package:rough_code/signin.dart';




void main() {
  
  runApp(const Home());
}
// ignore: camel_case_types
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Widget028(),
    );
  }
}

class Widget028 extends StatefulWidget {
  // ignore: use_super_parameters
  const Widget028({Key? key}) : super(key: key);

  @override
  State<Widget028> createState() => _Widget028State();
}

class _Widget028State extends State<Widget028> {
  int _selectedIndex = 0;

  // List for carousel images
  final List<String> carouselImgList = [
    'assets/1st image.jpeg',
    'assets/2nd image.jpeg',
    'assets/3rd image.jpg',
    'assets/4th image.jpg',
    'assets/5th image.webp',
  ];

  // List for vertically scrollable images
  final List<String> verticalImgList = [
    'assets/6th image.jpeg',
    'assets/7th image.png',
    'assets/8th image.jpg',
    'assets/9th image.jpeg',
    'assets/10th image.jpeg',
  ];

  final List<double> imgHeights = [
    200,
    200,
    200,
    200,
    200,
  ];

  late Timer _timer;
  final CarouselSliderController _carouselController = CarouselSliderController();
  final List<String> categories = [
    "Technology",
    "Food",
    "Jewellery",
    "Clothing",
    "Health",
    "Sports",
    "Education"
  ];

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      _carouselController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    
    print('Selected Index: $_selectedIndex');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color.fromRGBO(26, 35, 126, 1)),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(context) => signin()) );// Navigate back to the previous screen
          },
        ),
        centerTitle: true,
        title: const Text(
          'Metasphere',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 12, 19, 103),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            color: Colors.indigo[900],
            onPressed: () {
              print('Search icon pressed');
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            color: Colors.indigo[900],
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Notifications()));
              print('Notification icon pressed');
            },
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Horizontally scrollable categories
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: categories.map((category) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Chip(
                      label: Text(
                        category,
                        style: const TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.indigo[900],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 20),

            // Carousel Slider for the top images
            SizedBox(
              width: double.infinity,
              height: imgHeights[0], // Use the first image height for carousel
              child: CarouselSlider.builder(
                carouselController: _carouselController,
                itemCount: carouselImgList.length,
                itemBuilder: (context, index, realIndex) {
                  final imgPath = carouselImgList[index];
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20), // Circular edges
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20), // Circular edges
                      child: Image.asset(
                        imgPath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  enlargeCenterPage: true,
                  viewportFraction: 0.9,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Vertically scrollable images with icon buttons below
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(), // Ensures smooth scrolling
              itemCount: verticalImgList.length,
              itemBuilder: (context, i) {
                return Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 17),
                  child: Column(
                    children: [
                      // Image container
                      Container(
                        height: imgHeights[i],
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17), // Circular edges
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(17), // Circular edges
                          child: Image.asset(
                            verticalImgList[i],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // Container with icons
                      Container(
                        width: double.infinity,
                        color: const Color(0xFFEBEAF1),
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center, // Center the icons horizontally
                          children: [
                            IconButton(
                              icon: const Icon(Icons.favorite),
                              color: Colors.red,
                              onPressed: () {
                                 
                                print('heart pressed on image $i');
                              },
                            ),
                            const SizedBox(width: 20), // Add space between icons
                            IconButton(
                              icon: const Icon(Icons.chat),
                              color: Colors.green,
                              onPressed: () {
                                 Navigator.push(context, MaterialPageRoute(builder:(context) => const chat()) );
                                print('Chat pressed on image $i');
                              },
                            ),
                            const SizedBox(width: 20), // Add space between icons
                            IconButton(
                              icon: const Icon(Icons.save),
                              color: Colors.orange,
                              onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder:(context) =>  Saved()) );
                                print('Save pressed on image $i');
                              },
                            ),
                            const SizedBox(width: 20), // Add space between icons
                            IconButton(
                              icon: const Icon(Icons.info),
                              color: Colors.purple,
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Registration()));
                                  
                                print('Info pressed on image $i');
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
  backgroundColor: Colors.indigo[900],
  currentIndex: _selectedIndex,
  onTap: (index) {
    _onItemTapped(index); // Update the selected index
    
    // Handle actions for each BottomNavigationBarItem
    switch (index) {
      case 0: // Profile button pressed
        print('Home button pressed');
        // Perform an action (navigate to home page, etc.)
        Navigator.push(context, MaterialPageRoute(builder: (context) =>const Home()));
        break;
      case 1: // Home button pressed
        
        print('Profile button pressed');
        // Perform an action (navigate to profile page, etc.)
        Navigator.push(context, MaterialPageRoute(builder: (context) => accsettings()));
        break;
      case 2: // Save button pressed
        print('Save button pressed');
        // Perform an action (navigate to saved items, etc.)
        Navigator.push(context, MaterialPageRoute(builder: (context) => Saved()));
        break;
      case 3: // Create button pressed
        print('Create button pressed');
        // Perform an action (navigate to create new content, etc.)
        Navigator.push(context, MaterialPageRoute(builder: (context) => Createproduct()));
        break;
        case 4: // Create button pressed
        print('tips button pressed');
        // Perform an action (navigate to create new content, etc.)
        Navigator.push(context, MaterialPageRoute(builder: (context) => Guide()));
        break;
      
    }
  },
  items: const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.save),
      label: 'Save',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.create),
      label: 'Create',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.tips_and_updates),
      label: 'Tips',
    ),
  ],
  selectedItemColor: Colors.indigo[900],
  unselectedItemColor: Colors.indigo[200],
)

    );
  }
}