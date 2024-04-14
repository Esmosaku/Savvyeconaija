import 'package:econaija/constanst.dart';
import 'package:econaija/screens/receiveshareditems.dart';
import 'package:econaija/screens/recyclewaste.dart';
import 'package:econaija/screens/renderwaste.dart';
import 'package:econaija/screens/shareitems.dart';
import 'package:flutter/material.dart';

class communitysharing extends StatefulWidget {
  const communitysharing({super.key});

  @override
  State<communitysharing> createState() => _communitysharingState();
}

class _communitysharingState extends State<communitysharing> {
  int _value  =1;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const communitysharing()),
                    ),),
          actions: [
             ClipOval(
  child:  Image.asset (
    'assets/images/usericon.png',
    fit: BoxFit.cover,
  ),
), SizedBox(width: 5,),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children:<Widget> [
              Text('Community Sharing', style: kHeaderDesigns,),
              SizedBox(height: 10.0,),
              Text(' Pass on excess or unused items to others to\nreduce waste and promote\nreuse',textAlign: TextAlign.center, style: TextStyle(
                
              ),),
              SizedBox(height: 40.0,),
              Text('What do you want to do?',style: kHeader2Designs,),
              SizedBox(height: 45,),
              RadioListTile(value: 1, groupValue: _value, onChanged: (val){
                setState(() {
                  _value= val!;
                  
                });
              },activeColor: Colors.green,title: Text('Share Your Excess Items', style: kHeader2Designs,),subtitle: Text('Help reduce waste by sharing items you no longer need with others who can make use of them',style: TextStyle(color: Color(0xff303030)),),),
              RadioListTile(value: 2, groupValue: _value, onChanged: (val){
                setState(() {
                  _value= val!;
       
                });
              },activeColor: Colors.green,title: Text('Receive Shared Items',style: kHeader2Designs,),subtitle: Text('Find useful items from others in your community who are willing to share', style: TextStyle(color: Color(0xff303030)),),),
             SizedBox(height: 120,),
              ElevatedButton(
                
                style:  ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  
                  
                  backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50)
                ),
                 onPressed: () { 
                  if (_value==2) {
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const receiveshareditems()),
                    );
                  } else if(_value==1){Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const shareitems()),
                    );}
                 
                  },
              child: Text('Continue'),)
            ],
          ),
        ),
      ),
    );
  }
}