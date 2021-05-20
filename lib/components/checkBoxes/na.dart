import 'package:flutter/material.dart';
import 'package:circular_check_box/circular_check_box.dart';


class CheckBoxTemplateNA extends StatefulWidget {

  @override
  _CheckBoxTemplateNAState createState() => _CheckBoxTemplateNAState();
}

class _CheckBoxTemplateNAState extends State<CheckBoxTemplateNA> {
  bool selected=true ;
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
                  'N/A'
              ),
            onTap: ()=> this.setState(() { this.selected= !this.selected ;}),
      ),
          ),
        ),
    ]);
  }
}
