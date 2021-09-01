
import 'package:flutter/material.dart';

class utils {
  static Color getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');

    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }

    return Color(int.parse(hexColor, radix: 16));
  }
 static showAlertDialog(BuildContext context, String title, String content) {
    // set up the AlertDialog
    Widget okButton = TextButton(
      child: Text("OK", style: TextStyle(color: Colors.white, fontSize: 16)),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    AlertDialog alert = AlertDialog(
      title: Text(title, style: TextStyle(color: Colors.white, fontSize: 18)),
      content: Text(content,style: TextStyle(color: Colors.white,fontSize: 20),),
      insetPadding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 45.0),
      backgroundColor: Color(0xFF2C313B),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(color: Color( 0xFF23272F))),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

}