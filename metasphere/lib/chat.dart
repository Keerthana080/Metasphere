import 'package:flutter/material.dart';
import 'package:metasphere/home.dart';
//import 'package:rough_code/main.dart';

void main() {
  runApp(const chat());
}

// ignore: camel_case_types
class chat extends StatelessWidget {
  const chat({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'MetaSphere',
      home: ChatPage(), // Create an instance of ChatPage
    );
  }
}

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, 
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color.fromRGBO(26, 35, 126, 1)),
          onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder:(context) => const Home()) );
            // Navigate back to previous page
          },
        ),
        title: const Text(
          'MetaSphere',
          style: TextStyle(color: Color.fromRGBO(26, 35, 126, 1),fontWeight: FontWeight.bold,
            fontSize: 29.0,),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Filters
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FilterButton('All', Colors.white, Color(0xFF1A237E)),
                SizedBox(width: 8), // Reduced distance between filters
                FilterButton('Unread', Colors.white, Color(0xFF1A237E)),
              ],
            ),
            // Chat buttons
            const SizedBox(height: 16),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 5, // Replace with your actual chat data
              itemBuilder: (context, index) {
                return ChatButton(
                  'Person ${index + 1}',
                  'https://via.placeholder.com/50', // Replace with actual avatar URL
                  onPressed: () {
                    // Navigate to a new page when a chat button is pressed
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const ChatDetailPage()),
                    // );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Filter button widget
class FilterButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backgroundColor;

  const FilterButton(this.text, this.textColor, this.backgroundColor, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
    );
  }
}

// Chat button widget
class ChatButton extends StatelessWidget {
  final String name;
  final String avatarUrl;
  final VoidCallback onPressed;

  const ChatButton(this.name, this.avatarUrl, {super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 171, 179, 228), // Changed background color to light blue
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(avatarUrl),
        ),
        title: Text(name),
        onTap: onPressed, // Call the onPressed callback when the chat button is tapped
      ),
    );
  }
}