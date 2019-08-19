import 'package:flutter/material.dart';

import './question.dart';

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
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what is your favorite food ?',
      'what is your favorite animal ?',
      'what is your favorite movie ?',
    ];
    // TODO: implement build
    return MaterialApp(
      // scaffold untuk design base template
      //design coloring UI
      home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('MIDAS_IN'),
            ),
            leading: Icon(Icons.casino),
            backgroundColor: Colors.orangeAccent,
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search), onPressed: null)
            ],
          ),
          // BOdy center
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Question(questions.elementAt(_questionIndex)),
                RaisedButton(
                    // Pointer answerquestion
                    color: Colors.blueGrey,
                    textColor: Colors.white,
                    child: Text('Answer 1'),
                    onPressed: _answerQuestion),
                RaisedButton(
                    color: Colors.deepOrange,
                    textColor: Colors.white,
                    child: Text('Answer 1'),
                    onPressed: () => print('Answer 2 choosen')),
                RaisedButton(
                    color: Colors.deepPurple,
                    textColor: Colors.white,
                    child: Text('Answer 1'),
                    onPressed: () => print("Answer 3 choosen")),
              ],
              // end children
            ),
          )),
    );
  }
}
