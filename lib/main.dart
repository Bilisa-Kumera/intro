import 'package:flutter/material.dart';

void main() {
  runApp(const IntroApp());
}

class IntroApp extends StatelessWidget {
  const IntroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Intro Screen',
      home: IntroScreen(),
    );
  }
}

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Image and Text Section with Stack
            Expanded(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  // Cartoon Image
                  Image.asset(
                    'assets/cartoon.png', // Replace with your cartoon image asset path
                    height: 468,
                  ),
                  // Text: Boost Your Knowledge over the image
                  const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(
                            'BOOST',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(
                            'YOUR',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                            ),
                            textAlign: TextAlign.start,
                        
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(
                            'KNOWLEDGE',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                            ),
                            textAlign: TextAlign.start,
                        
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Buttons: Login and Sign Up
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, ),
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your login action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF58CC02), // Background color
                      padding: const EdgeInsets.symmetric(vertical: 10),
                    ),
                    child: const Center(
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 36),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, ),
                  child: OutlinedButton(
                    onPressed: () {
                      // Add your sign-up action
                    },
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      side: const BorderSide(color:  Color(0xFF58CC02)), // Border color
                    ),
                    child: const Center(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 36, color:  Color(0xFF58CC02)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
