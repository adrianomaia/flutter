import 'package:flutter/material.dart';

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

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
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
          Text(questions[questionIndex]),
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
