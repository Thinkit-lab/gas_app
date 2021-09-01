import 'package:flutter/material.dart';


class YesButton extends StatefulWidget {
  @override
  _YesButtonState createState() => _YesButtonState();
}

class _YesButtonState extends State<YesButton> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      height: 30,
      child: FlatButton(
        child: Text(
          'YES',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Lato',
            fontSize: 18
          ),
        ),
      ),
    );
  }
}