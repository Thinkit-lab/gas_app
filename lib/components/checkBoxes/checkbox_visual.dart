import 'package:flutter/material.dart';


class CheckBoxVisual extends StatefulWidget {
  @override
  _CheckBoxVisualState createState() => _CheckBoxVisualState();
}

class _CheckBoxVisualState extends State<CheckBoxVisual> {
  bool isCheck = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            child:
            Expanded(
              child: CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Yes'),
                value: isCheck,
                onChanged: (val) {
                  setState(() {
                    isCheck = val;
                  });
                },
              ),
            )
        ),
      ],
    );
  }
}