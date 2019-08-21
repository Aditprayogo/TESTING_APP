import 'package:flutter/material.dart';
import 'package:midas_in/result.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // mengganti text

    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _questions = const [
      // Mapping
      {
        'questionsText': 'what is your favorite food ?',
        'answer': [
          {'text': 'Kolak', 'score': 100},
          {'text': 'Mie', 'score': 10},
          {'text': 'Nasi uduk', 'score': 10},
        ],
      },
      {
        'questionsText': 'what is your favorite animal ?',
        'answer': [
          {'text': 'cat', 'score': 10},
          {'text': 'dog', 'score': 10},
          {'text': 'snake', 'score': 10}
        ],
      },
      {
        'questionsText': 'what is your favorite movie ?',
        'answer': [
          {'text': 'interstellar', 'score': 100}
        ],
      },
      {
        'questionsText': 'what is your underwear color?',
        'answer': [
          {'text': 'Black', 'score': 9},
          {'text': 'Red', 'score': 10}
        ],
      },
    ];
    // TODO: implement build
    return MaterialApp(
      // scaffold untuk design base template
      //design coloring UI
      home: Scaffold(
        // Design bar
        appBar: AppBar(
          title: Center(
            child: Text('MIDAS_IN'),
          ),
          leading: Icon(Icons.home),
          backgroundColor: Colors.orangeAccent,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: null)
          ],
        ),
        // Body center
        body: _questionIndex < _questions.length
            // if
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )

            // else
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
