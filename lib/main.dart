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
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'red', 'score': 5},
        {'text': 'white', 'score': 3},
        {'text': 'blue', 'score': 1}
      ]
    },
    {
      'questionText': 'what\'s your favourite animal?',
      'answers': [
        {'text': 'panther', 'score': 8},
        {'text': 'rabbit', 'score': 2},
        {'text': 'lion', 'score': 10},
        {'text': 'cheetah', 'score': 9}
      ]
    },
    {
      'questionText': 'what\'s your favourite instructor?',
      'answers': [
        {'text': 'max', 'score': 10},
        {'text': 'angela', 'score': 5},
        {'text': 'hitesh', 'score': 8},
        {'text': 'cargo', 'score': 1}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
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
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
