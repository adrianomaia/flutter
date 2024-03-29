import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  //positional argument
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20) ,
      width: double.infinity,
        child: Text(
      questionText,
      style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
    ));
  }
}
