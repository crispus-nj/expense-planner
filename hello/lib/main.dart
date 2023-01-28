import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // State<StatefulWidget> create
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    // throw UnimplementedError();
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext Context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First app'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(questions, _questionIndex, _answerQuestion)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
