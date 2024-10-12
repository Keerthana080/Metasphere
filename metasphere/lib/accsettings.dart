// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:metasphere/SellerHome.dart';
import 'package:metasphere/editprofile.dart';
import 'package:metasphere/home.dart';
// import 'package:rough_code/editprofile.dart';
// import 'package:rough_code/main.dart';
// import 'package:rough_code/sellershome.dart';

void main() {
  runApp(accsettings());
}

// ignore: camel_case_types
class accsettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove debug banner
      home: InvestorRegistration(),
    );
  }
}

class InvestorRegistration extends StatefulWidget {
  @override
  _InvestorRegistrationState createState() => _InvestorRegistrationState();
}

class _InvestorRegistrationState extends State<InvestorRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF), 
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, 
          color: Color.fromRGBO(26, 35, 126, 1)),

           onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(context) => const Home()) );
          //    Navigator.push(context, MaterialPageRoute(builder:(context) => const Home()) );
          //   Navigator.pop(context);
           },
        ),
        centerTitle: true,
        title: const Text(
          'Metasphere',
          style: TextStyle(color: Color(0xFF1A237E), fontWeight: FontWeight.bold,fontSize: 29),
        ),
      ),
      body: Container(
        color: Colors.white, // Background color
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16.0),

              // Profile Icon, centered
              const Center(
                child: Icon(
                  Icons.settings,
                  color: Color(0xFF1A237E),
                  size: 70.0, // Increased profile icon size
                ),
              ),

              const SizedBox(height: 32.0),

              // Concentric rectangular container with heading and rows
              Center(
                child: Container(
                  width: 300.0,
                  height: 400,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1A237E), // Container color
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Heading: Account Settings
                      const Text(
                        'Account Settings',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 16.0),

                      // First Row (Edit Profile)
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: const Color.fromRGBO(26, 35, 126, 1), backgroundColor: Colors.indigo[50],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder:(context) => editprofile()) );
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Edit Profile'),
                            Icon(Icons.edit, color: Color(0xFF1A237E)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16.0),

                      // Second Row (Push Notifications)
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: const Color(0xFF1A237E), backgroundColor: Colors.indigo[50],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => PushNotificationsDialog(),
                          );
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Push Notifications'),
                            Icon(Icons.notification_add, color: Color(0xFF1A237E)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16.0),

                      // Third Row (Seller Profile)
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: const Color(0xFF1A237E), backgroundColor: Colors.indigo[50],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder:(context) => SellerHome()) );
                          
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Seller Profile'),
                            Icon(Icons.sell_rounded, color: Color(0xFF1A237E)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16.0),

                      // Fourth Row (Help)
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: const Color(0xFF1A237E), backgroundColor: Colors.indigo[50],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => HelpDialog(),
                          );
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Help'),
                            Icon(Icons.info_rounded, color: Color(0xFF1A237E)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// New pages and dialogs
class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: const Center(
        child: Text('Edit Profile page'),
      ),
    );
  }
}

class PushNotificationsDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Push Notifications'),
      content: const Text('Push notifications content'),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Close'),
        ),
      ],
    );
  }
}

class SellerProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seller Profile'),
      ),
      body: const Center(
        child: Text('Seller Profile page'),
      ),
    );
  }
}

class HelpDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Help'),
      content: const Text('Help content'),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Close'),
        ),
      ],
    );
  }
}