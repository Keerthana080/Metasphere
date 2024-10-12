// ignore: file_names
// ignore_for_file: prefer_final_fields

// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:metasphere/accsettings.dart';
//import 'package:rough_code/accsettings.dart';

void main() {
  runApp(editprofile());
}

// ignore: use_key_in_widget_constructors, camel_case_types
class editprofile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove debug banner
      home: InvestorRegistration(),

    );
  }
}

// ignore: use_key_in_widget_constructors
class InvestorRegistration extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _InvestorRegistrationState createState() => _InvestorRegistrationState();
}

class _InvestorRegistrationState extends State<InvestorRegistration> {
  // Controller for editing the username
  TextEditingController _usernameController = TextEditingController();

  // Function to edit username
  void _editUsername() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Edit Username'),
          content: TextField(
            controller: _usernameController,
            decoration: const InputDecoration(hintText: "Enter new username"),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Save'),
              onPressed: () {
                // Logic to save the new username
                setState(() {
                  // Here you can update the username state if needed
                  // For example, updating a local variable or sending the new username to a server
                });
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
          ],
        );
      },
    );
  }

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
      body: Container(
        color: Colors.white, // Background color
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16.0),

              // Back Button
              

              const SizedBox(height: 8.0),

              // Profile Icon, centered
              const Center(
                child: Icon(
                  Icons.account_circle,
                  color: Color.fromRGBO(26, 35, 126, 1),
                  size: 55.0, // Profile icon size
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
                    color: Colors.indigo[900], // Container color
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white,
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Heading: Account Settings
                      const Text(
                        'User Profile',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,color: Colors.white
                        ),
                      ),
                      const SizedBox(height: 16.0),

                      // First Row (Username)
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(220, 225, 240, 1),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Username'),
                            IconButton(
                              icon: const Icon(Icons.edit, color: Color.fromRGBO(26, 35, 126, 1)),
                              onPressed: () {
                                _editUsername(); // Call edit username dialog
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16.0),

                      // Second Row (Email)
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(220, 225, 240, 1),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Email'),
                            IconButton(
                              icon: const Icon(Icons.edit, color: Color.fromRGBO(26, 35, 126, 1)),
                              onPressed: () {
                                // Edit action for email
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16.0),

                      // Third Row (Password)
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        decoration: BoxDecoration(
                           color: const Color.fromRGBO(220, 225, 240, 1),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Password'),
                            IconButton(
                              icon: const Icon(Icons.edit, color: Color.fromRGBO(26, 35, 126, 1)),
                              onPressed: () {
                                // Edit action for password
                              },
                            ),
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