import 'package:flutter/material.dart';
import 'package:circular_check_box/circular_check_box.dart';


class CheckBoxTemplateNo extends StatefulWidget {

  @override
  _CheckBoxTemplateNoState createState() => _CheckBoxTemplateNoState();
}

class _CheckBoxTemplateNoState extends State<CheckBoxTemplateNo> {
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
                  'No'
              ),
            onTap: ()=> this.setState(() { this.selected= !this.selected ;}),
      ),
          ),
        ),
    ]);
  }
}
