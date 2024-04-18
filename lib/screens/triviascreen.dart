import 'package:econaija/constanst.dart';
import 'package:econaija/screens/remitwaste.dart';
import 'package:econaija/widgets/econaijacustomButton.dart';
import 'package:econaija/widgets/optioncard.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Trivia extends StatelessWidget {
  const Trivia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          ClipOval(
            child: Image.asset(
              'assets/images/usericon.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 30),
              Text(
                'Trivia',
                style: kHeaderDesigns,
              ),
              SizedBox(
                height: 10,
              ),
              Text('Choose, the correct answer'),
              SizedBox(
                height: 45,
              ),
              Text(
                'Qusetion',
                style: TextStyle(color: Color(0xff01431B), fontSize: 20.0),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'What do you do with empty plastics at home?',
                textAlign: TextAlign.center,
                style: kHeader2Designs,
              ),
              SizedBox(
                height: 40,
              ),
              optionCard(
                option: 'A.',
                optionquestion: 'Throw it in the dustbin',
              ),
              SizedBox(
                height: 10,
              ),
              optionCard(
                option: 'B.',
                optionquestion:
                    'Keep separate and give to the\n waste management to recycle',
              ),
              SizedBox(
                height: 10,
              ),
              optionCard(
                option: 'C.',
                optionquestion: 'Throw it in the bush',
              ),
              SizedBox(
                height: 50,
              ),
              Eco9jaCustomButton(
                ButtonText: 'Check Answer',
                onPressed: () {
                  Alert(
                    context: context,
                    content: Column(children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Wrong Answer', style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700),),
                          Icon(Icons.close,color: Colors.red, size: 30,),
                        ],
                      ),
                      Text('Oops! That\'s incorrect', style: TextStyle(fontSize: 20.0),)
                    ],),
                    buttons: [
                      DialogButton(
                        color: Colors.red,
                        child: Text(
                          "Try Again",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () => Navigator.pop(context),
                        width: 120,
                      )
                    ],
                  ).show();
                 Alert(
                    context: context,
                       content: Row(children: <Widget>[],),
                    title: "Correct Answer",
                    style: AlertStyle(titleStyle: TextStyle(color: Colors.red)),
                    desc: "When done with drinking or using plastic, glass or any container, please keep them in a separate bag for the waste management to pick up and recycle.",
                 
                    buttons: [
                      DialogButton(
                        color: Colors.red,
                        child: Text(
                          "Try Again",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () => Navigator.pop(context),
                        width: 120,
                      )
                    ],
                  ).show();
                
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
