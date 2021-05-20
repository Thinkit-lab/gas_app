import 'package:flutter/material.dart';
import 'package:circular_check_box/circular_check_box.dart';


class CheckBoxTemplateVisual extends StatefulWidget {

  @override
  _CheckBoxTemplateVisualState createState() => _CheckBoxTemplateVisualState();
}

class _CheckBoxTemplateVisualState extends State<CheckBoxTemplateVisual> {
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
                  'Visual'
              ),
            onTap: ()=> this.setState(() { this.selected= !this.selected ;}),
      ),
          ),
        ),
    ]);
  }
}
