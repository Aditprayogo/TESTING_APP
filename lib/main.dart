import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
    var questions = [
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
          body: Column(
            // column property
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // childern
            children: [
              Question(
                questions[_questionIndex]['questionsText'],
              ),
              // Spread Function
              // memberi tahu bahwa answer ada List dari array
              // add them to surrounding list as individual values
              //add values to a list not a list to a list
              ...(questions[_questionIndex]['answer'] as List<String>)
                  .map((answer) => Answer(_answerQuestion, answer))
                  .toList()
            ],
            // end childern
          )),
    );
  }
}
