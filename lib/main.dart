import 'package:flutter/material.dart';

import './question.dart';

//void main(){
//runApp(MyApp());
//}

//we could build the main method like this
//this tells flutter that this class online renders/runs this method
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

// "_" turns the class into a private class. So underscore tuns variables, class, methods into private things
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQuestion() {

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }



  @override //make code clear and cleaner
  Widget build(BuildContext context) {
    //square brackets to create lists
    var questions = [
      'What\'s your favorite color?',
      'What\s your favorite animal? ',
    ];

    return MaterialApp(
        home: Scaffold(
        appBar: AppBar(
        title: Text('Boleias / Transportes'),
      ),
      body: Column(
        children: <Widget>[
          //questions.element(0) -> dart way
          Question(questions[_questionIndex]),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed:  () => print('Answer 1'),
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: answerQuestion,
          ), 
        ],
      ),
    ));
  }
}
