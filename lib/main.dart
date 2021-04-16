import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/result.dart';
import 'answer.dart';
import 'quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
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

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print('we have more questions');
    } else {
      print('no more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
