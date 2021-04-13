import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import 'answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'what\'s your favourite color?',
        'answers': ['black', 'red', 'white', 'blue']
      },
      {
        'questionText': 'what\'s your favourite animal?',
        'answers': ['panther', 'lion', 'tiger', 'bee']
      },
      {
        'questionText': 'what\'s your favourite instructor?',
        'answers': ['panther', 'lbry', 'tty', 'map']
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Quiz App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
