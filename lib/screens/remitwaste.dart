import 'package:econaija/constanst.dart';
import 'package:econaija/screens/recyclewaste.dart';
import 'package:econaija/screens/renderwaste.dart';
import 'package:econaija/widgets/econaijacustombutton.dart';
import 'package:flutter/material.dart';

class Remitwaste extends StatefulWidget {
  const Remitwaste({super.key});

  @override
  State<Remitwaste> createState() => _RemitwasteState();
}

class _RemitwasteState extends State<Remitwaste> {
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
                      MaterialPageRoute(builder: (_) => const Remitwaste()),
                    ),),
          actions: [
            ClipOval(
  child:  Image.asset (
    'assets/images/usericon.png',
    fit: BoxFit.cover,
  ),
), SizedBox(width: 5,),
            // CircleAvatar(
            //   radius: 55,
            //   foregroundColor: Colors.greenAccent,
            //   backgroundImage: AssetImage('assets/images/usericon.png'),
            // )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children:<Widget> [
              Text('Remit waste', style: kHeaderDesigns,),
              SizedBox(height: 10.0,),
              Text('Entrust waste to management \n authorities for responsible handling',textAlign: TextAlign.center, style: TextStyle(
                
              ),),
              SizedBox(height: 40.0,),
              Text('What do you want to do?',style: kHeader2Designs,),
              SizedBox(height: 45,),
              RadioListTile(value: 1, groupValue: _value, onChanged: (val){
                setState(() {
                  _value= val!;
                  
                });
              },activeColor: Colors.green,title: Text('Render Waste', style: kHeader2Designs,),subtitle: Text('Ensure proper disposal by handing over waste to authorized facilities',style: TextStyle(color: Color(0xff303030)),),),
              RadioListTile(value: 2, groupValue: _value, onChanged: (val){
                setState(() {
                  _value= val!;
       
                });
              },activeColor: Colors.green,title: Text('Recycle Waste',style: kHeader2Designs,),subtitle: Text('Transform non-biodegradable waste into renewable resources again', style: TextStyle(color: Color(0xff303030)),),),
             SizedBox(height: 120,),
             Eco9jaCustomButton(ButtonText: 'Continue', onPressed: (){
               if (_value==2) {
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const recycleWaste()),
                    );
                  } else if(_value==1){Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const RenderWaste()),
                    );}
             }),
                 
            ],
          ),
        ),
      ),
    );
  }
}