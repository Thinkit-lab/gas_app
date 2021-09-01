import 'package:flutter/material.dart';


class NaButton extends StatefulWidget {
  @override
  _NaButtonState createState() => _NaButtonState();
}

class _NaButtonState extends State<NaButton> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      height: 30,
      child: FlatButton(
        child: Text(
          'N/A',
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