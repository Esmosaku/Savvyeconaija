import 'package:econaija/model/question.dart';
import 'package:flutter/material.dart';

class optionCard extends StatelessWidget {
  final String option;

  final String optionquestion;
  final bool isSelected;
  final int? correctAnswerIndex;
  final int? selectedAnswerIndex;
  final int? currentIndex;
  final Function()? onPressed;
  const optionCard({
    super.key,
    required this.option,
    required this.optionquestion,
    required this.onPressed,
    required this.isSelected,
    required this.correctAnswerIndex,
    required this.selectedAnswerIndex,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    bool isCorrectAnswer = currentIndex == correctAnswerIndex;
    bool isWrongAnswer = !isCorrectAnswer && isSelected;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: OutlinedButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.green),
            side: MaterialStateProperty.all<BorderSide>(
                BorderSide(color: Color(0xff178843))),
            overlayColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.hovered)) {
                  return Colors.grey.withOpacity(0.2);
                }
                // ignore: null_check_always_fails
                return null!; // Defer to the default value for other states
              },
            ),
          ),
          onPressed: onPressed,
          child: Container(
            height: 65.0,
            child: Row(
              children: <Widget>[
                Text(
                  option,
                  style: TextStyle(fontSize: 18.0, color: Colors.green),
                ),
                SizedBox(
                  width: 7.0,
                ),
                Text(
                  optionquestion,
                  style: TextStyle(fontSize: 18.0, color: Colors.black),
                ),
              ],
            ),
          )),
    );
  }
}
