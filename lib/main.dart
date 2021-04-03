import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favourite color?',
      'what\'s your favourite color?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Quiz App'),
        ),
        body: Column(
          children: [
            Text('The Question!'),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
