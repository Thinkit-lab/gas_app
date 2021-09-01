import 'package:flutter/material.dart';


class Item {
  const Item(this.name);
  final String name;
// final Icon icon;
}
class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  Item selectedUser;
  List<Item> users = <Item>[
    const Item('Airing Cupboard'),
    const Item('Bedroom'),
    const Item('Landing'),
    const Item('Hallway'),
    const Item('Porch'),
    const Item('Garage'),
    const Item('Loft'),
    const Item('Kitchen'),
    const Item('Conservatory'),
    const Item('External Boiler Room'),
    const Item('Toilet'),
    const Item('Others'),
  ];
  @override
  Widget build(BuildContext context) {
    return  DropdownButton<Item>(
      hint:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Text("Location"),
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
