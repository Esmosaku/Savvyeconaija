import 'package:econaija/constanst.dart';
import 'package:econaija/model/question.dart';
import 'package:econaija/screens/remitwaste.dart';
import 'package:econaija/screens/triviamain.dart';
import 'package:econaija/widgets/econaijacustomButton.dart';
import 'package:econaija/widgets/optioncard.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Trivia extends StatefulWidget {
  const Trivia({super.key});

  @override
  State<Trivia> createState() => _TriviaState();
}

class _TriviaState extends State<Trivia> {
  int? selectedAnswerIndex;
  int questionIndex = 0;
  int score = 0;
  void pickAnswer(int value) {
    selectedAnswerIndex = value;
    final question = questions[questionIndex];
    if (selectedAnswerIndex == question.correctAnswerIndex) {
      score++;
    }
    setState(() {});
  }

  void goToNextQuestion() {
    if (questionIndex < questions.length - 1) {
      questionIndex++;
      selectedAnswerIndex = null;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[questionIndex];
    bool isLastQuestion = questionIndex == questions.length - 1;
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
                question.question,
                textAlign: TextAlign.center,
                style: kHeader2Designs,
              ),
              SizedBox(
                height: 40,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: question.options.length,
                itemBuilder: (context, index) {
                  return optionCard(
                    onPressed: () {
                      if (selectedAnswerIndex == null) {}
                      pickAnswer(index);
                    },
                    option: question.options[index],
                    currentIndex: index,
                    selectedAnswerIndex: selectedAnswerIndex,
                    correctAnswerIndex: question.correctAnswerIndex,
                    optionquestion: question.optionvalues[index],
                    isSelected: selectedAnswerIndex == index,
                  );
                },
              ),
              SizedBox(
                height: 50,
              ),
              Eco9jaCustomButton(
                ButtonText: 'Check Answer',
                onPressed: () {
                  print(selectedAnswerIndex);
                  print(question.correctAnswerIndex);
                  if (selectedAnswerIndex == question.correctAnswerIndex) {
                    Alert(
                      context: context,
                      content: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Corrent Answer',
                                  style: TextStyle(color: Colors.green)),
                              Icon(
                                Icons.check_circle,
                                color: Colors.green,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'When done with drinking or using plastic, glass or any container, please keep them in a separate bag for the waste management to pick up and recycle.',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 18.0),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: 12.0),
                              child: Text(
                                'You have earned 2 eco points🎉',
                                style: TextStyle(color: Colors.green, fontSize: 16),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                width: 2,
                                color: Colors.green,
                              ),
                            ),
                          )
                        ],
                      ),
                      buttons: [
                        DialogButton(
                          color: Colors.green,
                          child: Text(
                            "Restart",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (_) => TriviaMain()));
                            Navigator.pop(context);
                          },
                          width: 120,
                        ),
                        DialogButton(
                          color: Colors.green,
                          child: Text(
                            "Next",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          onPressed: () {
                            if (questionIndex == questions.length - 1) {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (_) => Remitwaste()));
                            } else {
                              goToNextQuestion();
                              Alert(context: context).dismiss();
                            }
                          },
                          width: 120,
                        ),
                      ],
                    ).show();
                  } else if (selectedAnswerIndex !=
                      question.correctAnswerIndex) {
                    Alert(
                      context: context,
                      content: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Wrong Answer',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w700),
                              ),
                              Icon(
                                Icons.close,
                                color: Colors.red,
                                size: 30,
                              ),
                            ],
                          ),
                          Text(
                            'Oops! That\'s incorrect',
                            style: TextStyle(fontSize: 20.0),
                          )
                        ],
                      ),
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
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
