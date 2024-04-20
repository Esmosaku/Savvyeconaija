//import 'package:econaija/screens/loginPage.dart';
import 'dart:async';
import 'package:econaija/screens/dashboard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() { // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const Onboarding1())));

    var green = Colors.green;
    return MaterialApp(
      home: Scaffold(
          backgroundColor: green,
          body: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(alignment: Alignment.center),
              Text(
                "EcoNaija",
                style: TextStyle(color: Colors.white, fontSize: 64),
                textAlign: TextAlign.center,
              ),
              Text(
                "Reduce.Reuse.Recycle",
                style: TextStyle(color: Colors.white, fontSize: 19),
                textAlign: TextAlign.center,
              ),
            ],
          )),
    );
  }
}



class Onboarding1 extends StatelessWidget {
  const Onboarding1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
                if(snapshot.connectionState== ConnectionState.waiting){
                  return Center(child: CircularProgressIndicator(),);
                }else if(snapshot.hasError){
                  return Center(child: Text('Something went wrong!'),);
                }
           else if(snapshot.hasData){
                  return  Dashboard();
            }else{
                 return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/Onboarding1pic.jpg'),
                  const SizedBox(height: 80),
                  const Text(
                    'Reduce',
                    style: TextStyle(
                      color: Color.fromARGB(202, 26, 236, 100),
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Cut down on waste as possible, and dispose properly',
                    style: TextStyle(
                      color: Color.fromARGB(202, 26, 236, 100),
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Image.asset('assets/images/On1scroll.jpg'),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      padding:
                          const EdgeInsets.symmetric(vertical: 15, horizontal: 120),
                      backgroundColor: Colors.green,
                      elevation: 0,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => const onboarding2()));
                    },
                    child: const Text(
                      'Next',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            );
            }
           
          }
        ),
      ),
    );
  }
}

class onboarding2 extends StatelessWidget {
  const onboarding2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/onboarding2pic.jpg'),
              const SizedBox(height: 80),
              const Text(
                'Reuse',
                style: TextStyle(
                  color: Color.fromARGB(202, 26, 236, 100),
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Give new life to old items, and avoid waste',
                style: TextStyle(
                  color: Color.fromARGB(202, 26, 236, 100),
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 20),
              Image.asset('assets/images/On2scroll.jpg'),
              const SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 120),
                  backgroundColor: Colors.green,
                  elevation: 0,
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => const onboarding3()));
                },
                child: const Text(
                  'Next',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class onboarding3 extends StatelessWidget {
  const onboarding3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/onboarding3pic.jpg'),
              const SizedBox(height: 80),
              const Text(
                'Recycle',
                style: TextStyle(
                  color: Color.fromARGB(202, 26, 236, 100),
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Sort, recycle, and contribute to a circular economy',
                style: TextStyle(
                  color: Color.fromARGB(202, 26, 236, 100),
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 20),
              Image.asset('assets/images/on3scroll.jpg'),
              const SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 120),
                  backgroundColor: Colors.green,
                  elevation: 0,
                ),
                onPressed: () {
                      Navigator.pushNamed(context, 'signupPage');  
                },
                child: const Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 120),
                  backgroundColor: Colors.white,
                  elevation: 0,
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => const onboarding3()));
                },
                child: const Text(
                  'Log In',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}










