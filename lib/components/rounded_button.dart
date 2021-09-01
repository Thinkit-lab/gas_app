import 'package:flutter/material.dart';
import 'package:living_byfaith/utils/utils.dart';

import '../constants.dart';


class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final bool isLoading;
  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
    this.isLoading=false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: utils.getColorFromHex("FC5F1C"),
          onPressed:(!isLoading)? press:null,
          child: (!isLoading)?Text(
            text,
            style: TextStyle(color: textColor),
          ):CircularProgressIndicator(backgroundColor: Colors.white,),
        ),
      ),
    );
  }
}
