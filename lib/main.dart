import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';
import 'quiz.dart';
import 'result.dart';

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
  var _totalScore = 0;

  var _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\s your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Dog', 'score': 5},
        {'text': 'Horse', 'score': 3},
        {'text': 'Lion', 'score': 1}
        ],
    },
    {
      'questionText': 'What\s your favorite player?',
      'answers': [
        {'text': 'Messi', 'score': 10},
        {'text': 'Salah', 'score': 5},
        {'text': 'Ronaldo', 'score': 3},
        {'text': 'Bernardo', 'score': 1}
        ],
    },
  ];

  void answerQuestion(int score) {
    
    _totalScore = _totalScore + score;
    
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print('You stil have more questions to answer!');
    } else {
      print('No more questions!');
    }
  }

  @override //make code clear and cleaner
  Widget build(BuildContext context) {
    //square brackets to create lists

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Boleias / Transportes'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Result(_totalScore),
    ));
  }
}
