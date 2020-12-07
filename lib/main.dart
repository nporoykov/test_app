//import 'dart:html';

import 'dart:ffi';

import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int count = 0;
  void answerQuestion() {
    setState(() {
      count++;
    });
    print('This is your answer count = ' + count.toString());
  }

  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      'What\'s your favorite book?',
      'What\'s your favorite fish?',
      'What\'s your favorite girl?'
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
            Question(questions[count]),
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
