import 'package:flutter/material.dart';


class Item {
  const Item(this.name);
  final String name;
// final Icon icon;
}
class FlueType extends StatefulWidget {
  @override
  _FlueTypeState createState() => _FlueTypeState();
}

class _FlueTypeState extends State<FlueType> {
  Item selectedUser;
  List<Item> users = <Item>[
    const Item('Room-Seal (R/S)'),
    const Item('Open Flue (O/F)'),
    const Item('Flueless (F/L)'),
    const Item('Oil'),
  ];
  @override
  Widget build(BuildContext context) {
    return  DropdownButton<Item>(
      hint:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Text("Flue Type"),
      ),
      value: selectedUser,
      onChanged: (Item Value) {
        setState(() {
          selectedUser = Value;
        });
      },
      items: users.map((Item user) {
        return  DropdownMenuItem<Item>(
          value: user,
          child: Row(
            children: <Widget>[
              // user.icon,
              // SizedBox(width: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  user.name,
                  style:  TextStyle(color: Colors.black, fontFamily: 'Lato'),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
