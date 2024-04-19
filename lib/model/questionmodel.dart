import 'package:flutter/material.dart';

class Question{
final String question;
final List<String> options;
final List<String> optionvalues;
final int correctAnswerIndex;

const Question({required this.optionvalues, required this.question,required this.options,required this.correctAnswerIndex,});
}