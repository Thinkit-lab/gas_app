import 'package:cmra/screens/addAppliances.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cmra/components/rounded_container.dart';


class AllAppliances extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xffff3a5a),
          flexibleSpace: SafeArea(
            child: Container(
              // padding: EdgeInsets.only(top: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back,color: Colors.white, size: 30,),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Center(
                    child: Text(
                      "Appliances",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          fontSize: 22),
                    ),
                  ),
                  Spacer(),

                  IconButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AddAppliance()));
                    },
                    icon: Icon(Icons.add,color: Colors.white, size: 30,),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Container(
          child:
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Material(
                elevation: 2.0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,

                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                      children:[
                        SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              child: Center(
                                child: Text(
                                  'Tap on the + icon on the top right to add a new appliances',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 18
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                        color: Color(0xffff3a5a)),
                                    child: FlatButton(
                                      child: Text(
                                        "Home",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18),
                                      ),
                                      onPressed: () {
                                      },
                                    ),
                                  )),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                        color: Color(0xffff3a5a)),
                                    child: FlatButton(
                                      child: Text(
                                        "Next",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18),
                                      ),
                                      onPressed: () {
                                      },
                                    ),
                                  )),
                            ),

                          ],
                        ),
                      ]),
                ),
              )),
        ));
  }
}
class Item {
  const Item(this.name);
  final String name;
// final Icon icon;
}
class DropdownScreen extends StatefulWidget {
  State createState() =>  DropdownScreenState();
}
class DropdownScreenState extends State<DropdownScreen> {
  Item selectedUser;
  List<Item> users = <Item>[
    const Item('Mr'),
    const Item('Mrs'),
    const Item('Miss'),
    const Item('Ms'),
  ];
  @override
  Widget build(BuildContext context) {
    return  DropdownButton<Item>(
      hint:  Text("Title"),
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
              Text(
                user.name,
                style:  TextStyle(color: Colors.black),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}