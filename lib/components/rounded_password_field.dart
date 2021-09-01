import 'package:flutter/material.dart';

import '../constants.dart';
import 'text_field_container.dart';



class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
    this.controller
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: Column(
        children: [
          TextField(
            obscureText: true,
            controller: controller,
            onChanged: onChanged,
            cursorColor: kPrimaryColor,
            decoration: InputDecoration(
              hintText: "Password",
              icon: Icon(
                Icons.lock,
                color: kPrimaryColor,
              ),
              suffixIcon: Icon(
                Icons.visibility,
                color: kPrimaryColor,
              ),
              border: InputBorder.none,
            ),
          ),
        ],
      ),
    );
  }
}
