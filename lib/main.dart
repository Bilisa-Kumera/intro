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
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Image.asset(
                    'assets/cartoon.png',
                    height: screenHeight * 0.55,
                    width: screenWidth,
                    fit: BoxFit.contain,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: screenHeight * 0.02),
                          child: Text(
                            'BOOST',
                            style: TextStyle(
                              fontFamily: 'Feather',
                              fontSize: screenWidth * 0.1,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFFFFA500),
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: screenHeight * 0.02),
                          child: Text(
                            'YOUR',
                            style: TextStyle(
                              fontFamily: 'Feather',
                              fontSize: screenWidth * 0.1,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFFFFA500),
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: screenHeight * 0.02),
                          child: Text(
                            'KNOWLEDGE',
                            style: TextStyle(
                              fontFamily: 'Feather',
                              fontSize: screenWidth * 0.1,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFFFFA500),
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
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF58CC02),
                      padding:
                          EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Text('Login',
                          style: TextStyle(
                              fontFamily: "Feather",
                              fontSize: screenWidth * 0.07,
                              color: const Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w700)),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()));
                    },
                    style: OutlinedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                      side: const BorderSide(color: Color(0xFF58CC02)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontFamily: "Feather",
                            fontSize: screenWidth * 0.07,
                            color: const Color(0xFF58CC02),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.05),
          ],
        ),
      ),
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Login Screen'),
      ),
    );
  }
}

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Signup Screen'),
      ),
    );
  }
}
