// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:metasphere/home.dart';
import 'package:metasphere/login.dart';
//import 'package:rough_code/login.dart';
//import 'package:rough_code/main.dart';


void main() {
  runApp(signin());
}

// ignore: camel_case_types
class signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InvestorRegistration(),
    );
  }
}

class InvestorRegistration extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _InvestorRegistrationState createState() => _InvestorRegistrationState();
}

class _InvestorRegistrationState extends State<InvestorRegistration> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color.fromRGBO(26, 35, 126, 1)),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(context) => MyApp()) );// Navigates back to the previous screen
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
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16.0),
                const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'First Name',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Enter your first name',
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.all(16.0),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Last Name',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Enter your last name',
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.all(16.0),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'E-mail',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Enter your email',
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.all(16.0),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Phone Number',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Enter your phone number',
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.all(16.0),
                    ),
                  ),
                ),
                const SizedBox(height: 32.0),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                     
                     Navigator.push(context, MaterialPageRoute(builder:(context) => const Home()) );
                    },
                    // ignore: sort_child_properties_last
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo[900],
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}