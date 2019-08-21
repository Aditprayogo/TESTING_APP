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

  void _answerQuestion() {
    // mengganti text
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
        'answer': ['Kolak', 'Mie', 'Nasi uduk'],
      },
      {
        'questionsText': 'what is your favorite animal ?',
        'answer': ['cat', 'dog', 'snake'],
      },
      {
        'questionsText': 'what is your favorite movie ?',
        'answer': ['interstellar'],
      },
      {
        'questionsText': 'what is your underwear color?',
        'answer': ['Black', 'Red'],
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
              : Result()),
    );
  }
}
