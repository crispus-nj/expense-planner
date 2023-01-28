import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final VoidCallback resertQuestion;
  Result(this.finalScore, this.resertQuestion);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text('Congratulations you did it!'),
        TextButton(
          onPressed: resertQuestion,
          child: Text('Restart Quiz'),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.redAccent),
              foregroundColor: MaterialStateProperty.all(Colors.white)),
          // :
        )
      ],
    ));
  }
}
