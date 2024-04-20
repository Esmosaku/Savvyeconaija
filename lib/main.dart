import 'package:econaija/firebase_options.dart';
import 'package:econaija/screens/loginPage.dart';
import 'package:econaija/screens/recyclewaste.dart';
import 'package:econaija/screens/remitwaste.dart';
import 'package:econaija/screens/renderwaste.dart';
import 'package:econaija/screens/signupPage.dart';
import 'package:econaija/screens/triviamain.dart';
import 'package:econaija/splash.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'screens/dashboard.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SignupPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        'signupPage': (context) => const SignupPage(),
        'loginPage': (context) => const LoginPage(),
        'dashboard': (context) => const Dashboard(),
        'remitwaste': (context) => const Remitwaste(),
        'renderwaste':(context) => const RenderWaste(),
        'recyclewaste':(context) => const recycleWaste(),
                }
    ); // define it once at root level.
  }
}