//import 'dart:html';

//import 'dart:ffi';

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
    var questions = [
      {
        'questionText': 'What\'s your favorite book?',
        'answers': ['Tikhiy Don', 'Azbuka', 'Idiot', 'Karamazovs brothers']
      },
      {
        'questionText': 'What\'s your favorite fish?',
        'answers': ['Sudak', 'Okun', 'Schuka', 'Omul']
      },
      {
        'questionText': 'What\'s your favorite girl?',
        'answers': ['Tatnia', 'Tina', 'Tuka', 'Titka']
      }
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
          Question(questions[count]['questionText']),
          ...(questions[count]['answers'] as List<String>).map((answer) {
        return Answer(answerQuestion, answer);
      }).toList();
      ],
    ),)
    ,
    );
  }
}
