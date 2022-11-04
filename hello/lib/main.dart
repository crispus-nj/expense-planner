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
  final questions = const [
    {
      'questionText': 'what\'s your first name?',
      'answers': ['Crispus', 'Njenga', 'Rachael', 'Jane']
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['Lion', 'Hippo', 'Cheater', 'Bat']
    },
  ];
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
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
            : Result(),
      ),
    );
  }
}
