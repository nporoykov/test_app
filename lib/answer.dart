import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
 final Function press;

   Answer(this.press);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.purpleAccent,
        child: Text('Answer 1'),
        onPressed: press,
      ),
    );
  }
}
