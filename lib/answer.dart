import 'package:flutter/material.dart';
import 'package:midas_in/question.dart';

class Answer extends StatelessWidget {
  final Function questions;
  final String answerText;
  Answer(this.questions, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
          // Pointer answerquestion
          padding: EdgeInsets.all(10),
          color: Colors.pink,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          textColor: Colors.orangeAccent,
          child: Text(answerText),
          splashColor: Colors.purple,
          onPressed: questions),
    );
  }
}
