import 'package:flutter/material.dart';

import '../constants.dart';
import 'text_field_container.dart';


class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  final TextInputType inputType;
  final VoidCallback onClick;
  final bool AllowClickable;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
    this.controller,
   this.inputType=TextInputType.text,
    this.onClick,
    this.AllowClickable=false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: (){

      if(AllowClickable)
        onClick();
    },
    child:
        TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        controller: controller,
        keyboardType: inputType,
        enabled: !AllowClickable,

        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    ));
  }
}
