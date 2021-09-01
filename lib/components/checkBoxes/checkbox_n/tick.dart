import 'package:flutter/material.dart';


class TickBox extends StatefulWidget {
  @override
  _TickBoxState createState() => _TickBoxState();
}

class _TickBoxState extends State<TickBox> {
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
                // title: Text('Yes'),
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