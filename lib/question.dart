import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  @override
  
  String questionText;

  //positional argument
  Question(this.questionText);
  
  Widget build(BuildContext context) {
    
    return Text(questionText);

  }
}