import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.answerQuestion,
    @required this.questions,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // column property
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      // childern
      children: [
        Question(
          questions[questionIndex]['questionsText'],
        ),
        // Spread Function
        // memberi tahu bahwa answer ada List dari array
        // add them to surrounding list as individual values
        //add values to a list not a list to a list
        ...(questions[questionIndex]['answer'] as List<String>)
            .map((answer) => Answer(answerQuestion, answer))
            .toList()
      ],
      // end childern
    );
  }
}
