import 'package:flutter/material.dart';


class CheckBoxNA extends StatefulWidget {
  @override
  _CheckBoxNAState createState() => _CheckBoxNAState();
}

class _CheckBoxNAState extends State<CheckBoxNA> {
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
                title: Text('N/A'),
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