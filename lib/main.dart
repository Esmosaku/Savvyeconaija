import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:econaija/screens/loginPage.dart';
import 'package:econaija/screens/remitwaste.dart';
import 'package:econaija/screens/signupPage.dart';
import 'package:econaija/splash.dart';
import 'package:firebase_core/firebase_core.dart';

import 'screens/dashboard.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StreamBuilder<User?>(
        stream: _auth.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Show loading indicator or splash screen while waiting for authentication state
            return const Splash();
          } else {
            if (snapshot.hasData) {
              // User is authenticated, navigate to dashboard or home screen
              return const Dashboard();
            } else {
              // User is not authenticated, navigate to login screen
              return const LoginPage();
            }
          }
        },
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        'signupPage': (context) => const SignupPage(),
        'loginPage': (context) => const LoginPage(),
        'dashboard': (context) => const Dashboard(),
        'remitwaste': (context) => const Remitwaste(),
      },
    );
  }
}