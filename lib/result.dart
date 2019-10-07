import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;

  Result(this.result);

  String get resultPhrase{
    
    String resulText;

    if(result <= 8){
      resulText = 'Great Result!';
    }else if(result <= 12){
      resulText = 'You can do better';
    }else{
      resulText = 'Jesus Crist!';
    }
    
    return resulText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
