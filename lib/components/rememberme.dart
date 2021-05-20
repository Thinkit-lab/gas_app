import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// ...

class LinkedLabelCheckbox extends StatelessWidget {
  const LinkedLabelCheckbox({
    this.label, this.padding, this.value, this.onChanged,
  });

  final String label;
  final EdgeInsets padding;
  final bool value;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        children: <Widget>[
          Checkbox(
            value: value,
            onChanged: (bool newValue) {
              onChanged(newValue);
            },
          ),
          SizedBox(
            width: 15,
          ),
          RichText(
            text: TextSpan(
              text: label,
              style: TextStyle(
                fontFamily: 'Lato',
                fontWeight: FontWeight.bold,
                color: Color(0xffff3a5a),
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print('Label has been tapped.');
                },
            ),
          ),
        ],
      ),
    );
  }
}

// ...

bool _isSelected = false;

@override
Widget build(BuildContext context) {
  return LinkedLabelCheckbox(
    label: 'Remember me',
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    value: _isSelected,
    onChanged: (bool newValue) {
      // setState(() {
      //   _isSelected = newValue;
      // });
    },
  );
}