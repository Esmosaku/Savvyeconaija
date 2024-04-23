import 'package:econaija/screens/profile.dart';
import 'package:econaija/screens/remitwaste.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Profile()),
                      );
              },
              icon: const Icon(Icons.account_circle),
            ),
          ],
        ),  


        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 130),
                child: Text(
                  'Dashboard',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, height: 3, color: Colors.green),
                ),
              ),

              const SizedBox(height: 8), 

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigate to the Remitwaste screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Remitwaste()),
                      );
                    },
                    child: Column(
                      children: [
                        Image.asset('assets/images/Ellipseremitwaste.jpg'),
                        const SizedBox(height: 5),
                        const Text(
                          'Remit Waste',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.green, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the Remitwaste screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Remitwaste()),
                      );
                    },
                    child: Column(
                      children: [
                        Image.asset('assets/images/EllipseCommunity.jpg'),
                        const SizedBox(height: 5),
                        const Text(
                          'Community',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.green, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),


              const SizedBox(height: 40), 

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigate to the Remitwaste screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Remitwaste()),
                      );
                    },
                    child: Column(
                      children: [
                        Image.asset('assets/images/Ellipsewaste trivia.jpg'),
                        const SizedBox(height: 5),
                        const Text(
                          'Waste Trivia',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.green, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the Remitwaste screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Remitwaste()),
                      );
                    },
                    child: Column(
                      children: [
                        Image.asset('assets/images/Ellipsenews.jpg'),
                        const SizedBox(height: 5),
                        const Text(
                          'News/Events',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.green, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

 
