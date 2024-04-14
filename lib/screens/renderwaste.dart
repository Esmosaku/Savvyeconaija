import 'dart:ui';

import 'package:econaija/constanst.dart';
import 'package:econaija/screens/recyclewaste.dart';
import 'package:econaija/screens/remitwaste.dart';
import 'package:econaija/widgets/econaijatextformfield.dart';
import 'package:flutter/material.dart';
  final _formKey= GlobalKey<FormState>();
class RenderWaste extends StatelessWidget {

  const RenderWaste({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: BackButton(onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const Remitwaste()),
                    ),),
          actions: [
            CircleAvatar(
              radius: 55,
              foregroundColor: Colors.greenAccent,
              backgroundImage: AssetImage('assets/images/usericon.png'),
            )
          ],
        ),
         body: SingleChildScrollView(child: Column(
          children: <Widget>[
            Text('Render Waste',style: kHeaderDesigns,),
            Text('Ensure proper disposal by handing over \n  waste to authorized facilities', textAlign: TextAlign.center,
             style: TextStyle(fontSize: 16.0),),
            SizedBox(height: 30.0,),
            Text('Fill in the following details',style: kHeader2Designs,),
            SizedBox(height: 35,),
            Form(
              key: _formKey,
              child: Column(children: <Widget>[
                Eco9jaTextFormField(labelText: 'Volume', hintText: '180 kg',),
                SizedBox(height: 10.0,),
                Eco9jaTextFormField(labelText: 'Location', hintText: 'Ikeja, Lagos'),
                SizedBox(height: 10.0,),
                Eco9jaTextFormField(labelText: 'How Long Overdue?', hintText: '2 weeks')
              ],)),
            SizedBox(height: 100,),
            ElevatedButton(style:  ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  
                  
                  backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50)
                ),onPressed: () => {
              if(_formKey.currentState!.validate()){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Great'))
                ),
              }
            }, child: Text('Submit'))
          ],
         )),
    );
  }
}
