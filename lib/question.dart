import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  // constructor
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28, fontStyle: FontStyle.italic),
        textAlign: TextAlign.center,
      ),
    );
  }
}
