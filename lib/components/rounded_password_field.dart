import 'package:flutter/material.dart';


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
            cursorColor: Colors.lightBlue,
            decoration: InputDecoration(
              hintText: "Password",
              icon: Icon(
                Icons.lock,
                color: Colors.lightBlue,
              ),
              suffixIcon: Icon(
                Icons.visibility,
                color: Colors.lightBlue,
              ),
              border: InputBorder.none,
            ),
          ),
        ],
      ),
    );
  }
}
