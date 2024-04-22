import 'package:econaija/constanst.dart';
import 'package:econaija/screens/forumMain.dart';
import 'package:econaija/screens/remitwaste.dart';
import 'package:econaija/widgets/econaijacustomButton.dart';
import 'package:flutter/material.dart';

class Forum extends StatelessWidget {
  const Forum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          ],
        ),
        body: SingleChildScrollView(child: Column(
          children: <Widget>[
            Text('Forum', style: kHeaderDesigns,),
            SizedBox(height: 8,),
            Text('Join fellow eco-conscious individuals in discussions on waste reduction, recycling, and sustainable living', textAlign: TextAlign.center,),
            SizedBox(height: 40,
            ),
            Row(children: [
              Icon(Icons.recycling,color: Colors.green,),
              Text('Inspire others to take action for a \ncleaner, greener future.', style: TextStyle(color: Colors.green),)
            ],),
            SizedBox(height: 10,),
            Row(children: [
              Icon(Icons.recycling, color: Colors.green,),
              Text('Share tips, ask questions, and\nengage in discussions to learn', style: TextStyle(color: Colors.green),)
            ],),
            SizedBox(height: 10,),
            Row(children: [
              Icon(Icons.recycling,color: Colors.green,),
              Text('Connect with like-minded people \npassionate about climate change', style: TextStyle(color: Colors.green),)
            ],),
            SizedBox(height: 70.0,),
            Eco9jaCustomButton(ButtonText: 'Enter Forum', onPressed: (){
               Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const ForumMain()),
                    );
            })
            
          ],
        )),
    );
    
  }
  
}