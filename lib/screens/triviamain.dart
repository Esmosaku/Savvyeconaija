import 'package:econaija/screens/remitwaste.dart';
import 'package:econaija/screens/triviascreen.dart';
import 'package:econaija/widgets/econaijacustombutton.dart';
import 'package:flutter/material.dart';
import 'package:econaija/constanst.dart';
class TriviaMain extends StatelessWidget {
  const TriviaMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          leading: BackButton(onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) =>  Remitwaste()),
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
          SizedBox(height: 60,),
          Text('Trivia',style: kHeaderDesigns,),
           SizedBox(height: 10,),
          Text('Answer questions correctly to earn\npoints and climb the leaderboard. '),
          SizedBox(height:50.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Center(child: Text('Test your knowledge and learn fun facts about waste management, recycling, and sustainability',style: kHeader2Designs,textAlign: TextAlign.center,)),
          ),
           SizedBox(height:100.0),
          Eco9jaCustomButton(ButtonText: 'Start Game',onPressed: () { 
            Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const Trivia ()),
                    );
           },)],
      )),
    );
  }
}
