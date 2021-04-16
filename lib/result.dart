import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultTxt;

    if (resultScore <= 8) {
      resultTxt = "You are awesome and innocent!";
    } else if (resultScore <= 12) {
      resultTxt = "Pretty likable!";
    } else if (resultScore <= 16) {
      resultTxt = 'You are so bad';
    } else {
      resultTxt = 'You are so bad!';
    }

    return resultTxt;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text(
              'Restart Quiz!',
            ),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.blue)),
          )
        ],
      ),
    );
  }
}
