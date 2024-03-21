import 'package:flutter/material.dart';
import 'package:maazim/CreateEventPage.dart';
import 'package:maazim/signUp.dart';

class guestEventsPage extends StatefulWidget {
  @override
  _guestEventsPageState createState() => _guestEventsPageState();
}

class _guestEventsPageState extends State<guestEventsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove the back button
        title: const Row(
          children: [
            SizedBox(width: 8), // Add space between the icon and the title
            Text(
              'My Events',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ],
        ),
      ),
      body: Center( // Center the column on the screen
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center the children vertically
          children: [
            Image.asset(
              'assets/teapot.png', // Replace with your asset image path
              width: 200, // Set your width accordingly
              height: 200, // Set your height accordingly
            ),
            SizedBox(height: 24), // Add some space between the image and the text
            Text(
              "To have access to full features please",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(height: 24), 
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),// Add some space between the text and the button
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUp()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF9a85a4), // Button background color
                onPrimary: Colors.white, // Text color
              ),
              child: Text(
                "Sign up",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
             ),
          ],
        ),
      ),
    );
  }
}