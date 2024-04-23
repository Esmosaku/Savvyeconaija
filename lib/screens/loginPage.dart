
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dashboard.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  Future<void> logIn(String email, String password) async {
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    // User logged in successfully
  } catch (e) {
    // Handle error
  }
}




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 60.0),
                child: Text(
                  'Welcome Back',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                child: const Text(
                  'Password',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, height: 4),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Minimum of 8 characters',
                  ),
                ),
              ),
               const SizedBox(height: 60),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                ),

                
               
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const Dashboard()),
                    );
                  },
                  
                  style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                  
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
             
              ),

              

              const SizedBox(
                height: 160,
              ),
              const Text('Do not have an account? Create One'),
            ],
          ),
        ),
      ),
    );
  }
}





  
