import 'package:flutter/material.dart';
import 'package:circular_check_box/circular_check_box.dart';


class CheckBoxTemplateYes extends StatefulWidget {

  @override
  _CheckBoxTemplateYesState createState() => _CheckBoxTemplateYesState();
}

class _CheckBoxTemplateYesState extends State<CheckBoxTemplateYes> {
  bool selected=false ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Expanded(
            child: ListTile(
            leading: CircularCheckBox(value: this.selected, checkColor: Colors.white  ,
                activeColor: Colors.green, inactiveColor: Colors.redAccent,
                disabledColor: Colors.grey ,
                onChanged: (val) => this.setState(() { this.selected= !this.selected ;}) ),
            trailing: Text(
              'Yes'
            ),
            onTap: ()=> this.setState(() { this.selected= !this.selected ;}),
      ),
          ),
        ),
    ]);
  }
}
