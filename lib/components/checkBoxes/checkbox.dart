import 'package:flutter/material.dart';


class CheckBox extends StatefulWidget {
  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool isCheck = false;

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