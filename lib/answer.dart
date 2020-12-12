import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
 final Function press;
 final String textButton;

   Answer(this.press, this.textButton);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.amberAccent,
        color: Colors.purpleAccent,
        child: Text(textButton),
        onPressed: press,
      ),
    );
  }
}
