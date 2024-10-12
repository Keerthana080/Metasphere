// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:metasphere/Tips.dart';
import 'package:metasphere/home.dart';
// import 'package:rough_code/createtips.dart';
// import 'package:rough_code/main.dart';




// ignore: camel_case_types
class guideregi extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _Registration createState() => _Registration();
}

class _Registration extends State<guideregi> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color.fromRGBO(26, 35, 126, 1)),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(context) => const Home()) );
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
                  'Investor Registration',
                  style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold,color:Colors.black),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'First Name',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,color: Color.fromRGBO(26, 35, 126, 1)),
                ),
                const SizedBox(height: 8.0),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.all(16.0),
                    ),
                
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Last Name',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,color: Color.fromRGBO(26, 35, 126, 1)),
                ),
                const SizedBox(height: 8.0),
                Container(
                  decoration: BoxDecoration(
                     color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.all(16.0),
                    ),
                   
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'PAN number of company/individual',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,color: Color.fromRGBO(26, 35, 126, 1)),
                ),
                const SizedBox(height: 8.0),
                Container(
                  decoration: BoxDecoration(
                   color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.all(16.0),
                    ),
                   
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Name of Company',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,color: Color(0xFF1A237E)),
                ),
                const SizedBox(height: 8.0),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.all(16.0),
                    ),
                
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Mobile Number',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,color: Color.fromRGBO(26, 35, 126, 1)),
                ),
                const SizedBox(height: 8.0),
                Container(
                  decoration: BoxDecoration(
                   color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.all(16.0),
                    ),
                
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'E-mail',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,color: Color.fromRGBO(26, 35, 126, 1)),
                ),
                const SizedBox(height: 8.0),
                Container(
                  decoration: BoxDecoration(
                     color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.all(16.0),
                    ),
                
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Password',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,color: Color.fromRGBO(26, 35, 126, 1)),
                ),
                const SizedBox(height: 8.0),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.all(16.0),
                    ),
                
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'CIN Number',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,color:Color.fromRGBO(26, 35, 126, 1)),
                ),
                const SizedBox(height: 8.0),
                Container(
                  decoration: BoxDecoration(
                  color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.all(16.0),
                    ),
                   
                  ),
                ),
                const SizedBox(height: 32.0),
                Center(

                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder:(context) =>  Tips()) );
                        },
                        // ignore: sort_child_properties_last
                        child: const Text('Register',style: TextStyle(color: Colors.white),),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.indigo[900],
                          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
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