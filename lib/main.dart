//import 'dart:html';

import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int count = 0;

    void answerQuestion() {
      ++count;
      print('This is your answer count = ' + count.toString());
    }

    List<String> questions = [
      'What\'s your favorite book?',
      'What\'s your favorite fish?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Title',
          ),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[1]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => print('answer 3 chosen'),
            )
          ],
        ),
      ),
    );
  }
}
