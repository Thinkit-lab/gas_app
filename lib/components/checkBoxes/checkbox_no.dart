import 'package:flutter/material.dart';


class CheckBoxNo extends StatefulWidget {
  @override
  _CheckBoxNoState createState() => _CheckBoxNoState();
}

class _CheckBoxNoState extends State<CheckBoxNo> {
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
                title: Text('No'),
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