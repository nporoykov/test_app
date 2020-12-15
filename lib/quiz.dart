import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final int count;
  final List <Map<String, Object>> questions;
  final Function answerQuestion;

  Quiz({@required this.count, @required this.answerQuestion, @required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[count]['questionText']),
        ...(questions[count]['answers'] as List<String>)
            .map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
