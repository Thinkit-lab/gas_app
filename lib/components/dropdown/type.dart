import 'package:flutter/material.dart';


class Item {
  const Item(this.name);
  final String name;
// final Icon icon;
}
class Type extends StatefulWidget {
  @override
  _TypeState createState() => _TypeState();
}

class _TypeState extends State<Type> {
  Item selectedUser;
  List<Item> users = <Item>[
    const Item('Boiler'),
    const Item('Gas Fire'),
    const Item('Cooker'),
    const Item('Hob'),
    const Item('Warm Air Unit'),
    const Item('Gas Meter'),
    const Item('Hot Water Unit'),
    const Item('Leisure Point'),
  ];
  @override
  Widget build(BuildContext context) {
    return  DropdownButton<Item>(
      hint:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Text("Type"),
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
