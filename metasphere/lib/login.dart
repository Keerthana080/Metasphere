// ignore_for_file: use_key_in_widget_constructors, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:metasphere/home.dart';
import 'package:metasphere/signin.dart';
// import 'package:rough_code/main.dart';
// import 'package:rough_code/signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
        title: const Text(
          'Metasphere',
          style: TextStyle(color: Color.fromRGBO(26, 35, 126, 1),fontWeight: FontWeight.bold,fontSize: 29.0), // Changed AppBar text color
        ),
        backgroundColor: Colors.white, // Changed AppBar background color
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
                  'Login',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Changed Login text color
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
                      labelText: 'Enter your E-mail',
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.all(16.0),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Password',
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
                      labelText: 'Enter your Password',
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.all(16.0),
                    ),
                    obscureText: true, // Hides the password text
                  ),
                ),
                const SizedBox(height: 32.0),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context) => const Home()) );
                      if (_formKey.currentState!.validate()) {
                        // Process data
                      }
                    },
                    // ignore: sort_child_properties_last
                    child: const Text(
                      'login',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo[900],
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(height: 32.0),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context) => signin()) );
                      if (_formKey.currentState!.validate()) {
                        // Process data
                      }
                    },
                    // ignore: sort_child_properties_last
                    child: const Text(
                      'Sign in',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo[900],
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
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