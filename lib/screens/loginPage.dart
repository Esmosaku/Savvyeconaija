
import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailcontroller= TextEditingController();
  final passwordController= TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    emailcontroller.dispose();
    passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Minimum of 8 characters',
                  ),
                ),
              ),
               const SizedBox(height: 60),
                Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'hello@joe.com',
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                ),
                
                
               
                child: ElevatedButton(
                  onPressed: signIn,
                  // () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (_) => 
                  //     const Dashboard()),
                  //   );
                  // },
                  
                  style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                  
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
             
              ),

              

              SizedBox(
                height: 160,
              ),
             Text('Do not have an account? Create One'),
            ],
          ),
        ),
      ),
    );
  }

  Future signIn() async{
    showDialog(context: context, barrierDismissible: false, builder: (context) => Center(child: CircularProgressIndicator(),),);

    try{
          await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailcontroller.text.trim(), password: passwordController.text.trim());
               Navigator.pushNamed(context, 'dashboard');
    }on FirebaseAuthException catch (e){
      print(e);
    }

  }
}





  
