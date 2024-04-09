import 'package:econaija/screens/remitwaste.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 130),
                child: Text(
                  'Dashboard',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, height: 6, color: Colors.green),
                ),
              ),


              const SizedBox(height: 1),
               Align(
  alignment: Alignment.centerLeft,
  child: GestureDetector(
          onTap: () {
            // Navigate to the other page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Remitwaste()),
            );
          },

  child: Image.asset('assets/images/Ellipseremitwaste.jpg'),
),
               ),
              
              const SizedBox(height: 5),
              const Text(
                'Remit Waste',
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.green,fontSize:20),
              ),

              const SizedBox(height: 0),
               Align(
  alignment: Alignment.topRight,
  child: GestureDetector(
          onTap: () {
            // Navigate to the other page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Remitwaste()),
            );
          },

  child: Image.asset('assets/images/EllipseCommunity.jpg',
  ),
),
               ),
              
              const SizedBox(height: 5),
              const Text(
                'Community',
                textAlign: TextAlign.right,
                style: TextStyle(color: Colors.green,fontSize:20),
              ),
            ],
          ),
        ),
      ),
    );
}
}

 
