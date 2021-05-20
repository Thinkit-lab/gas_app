import 'package:cmra/components/checkBoxes/yes.dart';
import 'package:cmra/components/checkBoxes/no.dart';
import 'package:cmra/components/checkBoxes/na.dart';
import 'package:cmra/components/checkBoxes/visual.dart';
import 'package:cmra/screens/appliances.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cmra/components/rounded_container.dart';


class AddAppliance extends StatelessWidget {
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
                ],
              ),
            ),
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child:
          SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Material(
                      elevation: 2.0,
                      child: Column(
                          children:[
                            Padding(
                              padding: const EdgeInsets.all( 8.0),
                              child: Container(
                                child: Material(
                                  elevation: 2.0,
                                  // borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: TextField(
                                    onChanged: (String value){},
                                    cursorColor: Colors.deepOrange,
                                    decoration: InputDecoration(
                                        hintText: "Type",
                                        suffixIcon: Material(
                                          elevation: 0,
                                          borderRadius: BorderRadius.all(Radius.circular(30)),
                                          child: Icon(
                                            Icons.close,
                                            color: Colors.red,
                                          ),
                                        ),
                                        border: InputBorder.none,
                                        contentPadding:
                                        EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all( 8.0),
                              child: Container(
                                child: Material(
                                  elevation: 2.0,
                                  // borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: TextField(
                                    onChanged: (String value){},
                                    cursorColor: Colors.deepOrange,
                                    decoration: InputDecoration(
                                        hintText: "Make",
                                        suffixIcon: Material(
                                          elevation: 0,
                                          borderRadius: BorderRadius.all(Radius.circular(30)),
                                          child: Icon(
                                            Icons.close,
                                            color: Colors.red,
                                          ),
                                        ),
                                        border: InputBorder.none,
                                        contentPadding:
                                        EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all( 8.0),
                              child: Container(
                                child: Material(
                                  elevation: 2.0,
                                  // borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: TextField(
                                    onChanged: (String value){},
                                    cursorColor: Colors.deepOrange,
                                    decoration: InputDecoration(
                                        hintText: "Model",
                                        suffixIcon: Material(
                                          elevation: 0,
                                          borderRadius: BorderRadius.all(Radius.circular(30)),
                                          child: Icon(
                                            Icons.close,
                                            color: Colors.red,
                                          ),
                                        ),
                                        border: InputBorder.none,
                                        contentPadding:
                                        EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all( 8.0),
                              child: Container(
                                child: Material(
                                  elevation: 2.0,
                                  // borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: TextField(
                                    onChanged: (String value){},
                                    cursorColor: Colors.deepOrange,
                                    decoration: InputDecoration(
                                        hintText: "Location",
                                        suffixIcon: Material(
                                          elevation: 0,
                                          borderRadius: BorderRadius.all(Radius.circular(30)),
                                          child: Icon(
                                            Icons.close,
                                            color: Colors.red,
                                          ),
                                        ),
                                        border: InputBorder.none,
                                        contentPadding:
                                        EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                  child: Material(
                                      elevation: 2.0,
                                  child: DropdownScreen())),
                            ),
                            Padding(
                              padding: const EdgeInsets.all( 8.0),
                              child: Container(
                                child: Material(
                                  elevation: 2.0,
                                  // borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: TextField(
                                    onChanged: (String value){},
                                    cursorColor: Colors.deepOrange,
                                    decoration: InputDecoration(
                                        hintText: "GCN",
                                        suffixIcon: Material(
                                          elevation: 0,
                                          borderRadius: BorderRadius.all(Radius.circular(30)),
                                          child: Icon(
                                            Icons.close,
                                            color: Colors.red,
                                          ),
                                        ),
                                        border: InputBorder.none,
                                        contentPadding:
                                        EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all( 8.0),
                              child: Container(
                                child: Material(
                                  elevation: 2.0,
                                  // borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: TextField(
                                    onChanged: (String value){},
                                    cursorColor: Colors.deepOrange,
                                    decoration: InputDecoration(
                                        hintText: "Serial No.",
                                        suffixIcon: Material(
                                          elevation: 0,
                                          borderRadius: BorderRadius.all(Radius.circular(30)),
                                          child: Icon(
                                            Icons.close,
                                            color: Colors.red,
                                          ),
                                        ),
                                        border: InputBorder.none,
                                        contentPadding:
                                        EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                alignment: AlignmentDirectional.centerStart,
                                child: Text(
                                  'Landlord Appliances ?',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 16
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(child: CheckBoxTemplateYes()),
                                Expanded(child: CheckBoxTemplateNo()),
                                Expanded(child: CheckBoxTemplateNA()),

                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                alignment: AlignmentDirectional.centerStart,
                                child: Text(
                                  'Appliance Inspected ?',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 16
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(child: CheckBoxTemplateYes()),
                                Expanded(child: CheckBoxTemplateNo()),
                                Expanded(child: CheckBoxTemplateVisual()),

                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all( 8.0),
                              child: Container(
                                height: 150,
                                child: Material(
                                  elevation: 2.0,
                                  // borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: TextField(
                                    onChanged: (String value){},
                                    cursorColor: Colors.deepOrange,
                                    decoration: InputDecoration(
                                        hintText: "Notes...",
                                        suffixIcon: Material(
                                          elevation: 0,
                                          borderRadius: BorderRadius.all(Radius.circular(30)),
                                          child: Icon(
                                            Icons.close,
                                            color: Colors.red,
                                          ),
                                        ),
                                        border: InputBorder.none,
                                        contentPadding:
                                        EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Material(
                      elevation: 2.0,
                      child: Column(
                          children:[
                            Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(10),topRight: Radius.circular(10)), color: Color(0xffff3a5a),),
                              width: MediaQuery.of(context).size.width,
                              height: 30,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
                                child: Text(
                                  'Combustion Analyser Reading High',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'Lato'
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                      color: Colors.teal),
                                  child: GestureDetector(
                                    child: Container(
                                      alignment: AlignmentDirectional.center,
                                      child: Text(
                                        "Import Readings",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ),
                                )),
                            Padding(
                              padding: const EdgeInsets.all( 8.0),
                              child: Container(
                                child: Material(
                                  elevation: 2.0,
                                  // borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: TextField(
                                    onChanged: (String value){},
                                    cursorColor: Colors.deepOrange,
                                    decoration: InputDecoration(
                                        hintText: "Ratio",
                                        suffixIcon: Material(
                                          elevation: 0,
                                          borderRadius: BorderRadius.all(Radius.circular(30)),
                                          child: Icon(
                                            Icons.close,
                                            color: Colors.red,
                                          ),
                                        ),
                                        border: InputBorder.none,
                                        contentPadding:
                                        EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all( 8.0),
                              child: Container(
                                child: Material(
                                  elevation: 2.0,
                                  // borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: TextField(
                                    onChanged: (String value){},
                                    cursorColor: Colors.deepOrange,
                                    decoration: InputDecoration(
                                        hintText: "CO (ppm)",
                                        suffixIcon: Material(
                                          elevation: 0,
                                          borderRadius: BorderRadius.all(Radius.circular(30)),
                                          child: Icon(
                                            Icons.close,
                                            color: Colors.red,
                                          ),
                                        ),
                                        border: InputBorder.none,
                                        contentPadding:
                                        EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all( 8.0),
                              child: Container(
                                child: Material(
                                  elevation: 2.0,
                                  // borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: TextField(
                                    onChanged: (String value){},
                                    cursorColor: Colors.deepOrange,
                                    decoration: InputDecoration(
                                        hintText: "CO2 (%)",
                                        suffixIcon: Material(
                                          elevation: 0,
                                          borderRadius: BorderRadius.all(Radius.circular(30)),
                                          child: Icon(
                                            Icons.close,
                                            color: Colors.red,
                                          ),
                                        ),
                                        border: InputBorder.none,
                                        contentPadding:
                                        EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Material(
                      elevation: 2.0,
                      child: Column(
                          children:[
                            Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(10),topRight: Radius.circular(10)), color: Color(0xffff3a5a),),
                              width: MediaQuery.of(context).size.width,
                              height: 30,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
                                child: Text(
                                  'Safety Checks',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: 'Lato'
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all( 8.0),
                              child: Container(
                                child: Material(
                                  elevation: 2.0,
                                  // borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: TextField(
                                    onChanged: (String value){},
                                    cursorColor: Colors.deepOrange,
                                    decoration: InputDecoration(
                                        hintText: "Operating Pressure (mBar)",
                                        suffixIcon: Material(
                                          elevation: 0,
                                          borderRadius: BorderRadius.all(Radius.circular(30)),
                                          child: Icon(
                                            Icons.close,
                                            color: Colors.red,
                                          ),
                                        ),
                                        border: InputBorder.none,
                                        contentPadding:
                                        EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Padding(
                                    padding: const EdgeInsets.all( 8.0),
                                    child: Container(
                                      child: Material(
                                        elevation: 2.0,
                                        // borderRadius: BorderRadius.all(Radius.circular(10)),
                                        child: TextField(
                                          onChanged: (String value){},
                                          cursorColor: Colors.deepOrange,
                                          decoration: InputDecoration(
                                              hintText: "Heat Input (kW/h)",
                                              suffixIcon: Material(
                                                elevation: 0,
                                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                                child: Icon(
                                                  Icons.close,
                                                  color: Colors.red,
                                                ),
                                              ),
                                              border: InputBorder.none,
                                              contentPadding:
                                              EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      child: Container(
                                        height: 40,
                                        color: Color(0xffff3a5a),
                                        child: Icon(
                                          Icons.calculate,
                                          size: 40,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                alignment: AlignmentDirectional.centerStart,
                                child: Text(
                                  'Safety Devices ?',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 16
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(child: CheckBoxTemplateYes()),
                                Expanded(child: CheckBoxTemplateNo()),
                                Expanded(child: CheckBoxTemplateNA()),

                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                alignment: AlignmentDirectional.centerStart,
                                child: Text(
                                  'Ventilation ?',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 16
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(child: CheckBoxTemplateYes()),
                                Expanded(child: CheckBoxTemplateNo()),
                                Expanded(child: CheckBoxTemplateNA()),

                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                alignment: AlignmentDirectional.centerStart,
                                child: Text(
                                  'Flue and Termination ?',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 16
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(child: CheckBoxTemplateYes()),
                                Expanded(child: CheckBoxTemplateNo()),
                                Expanded(child: CheckBoxTemplateNA()),

                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                alignment: AlignmentDirectional.centerStart,
                                child: Text(
                                  'Flue Performance ?',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 16
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(child: CheckBoxTemplateYes()),
                                Expanded(child: CheckBoxTemplateNo()),
                                Expanded(child: CheckBoxTemplateNA()),

                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                alignment: AlignmentDirectional.centerStart,
                                child: Text(
                                  'Appliance Serviced',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 16
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(child: CheckBoxTemplateYes()),
                                Expanded(child: CheckBoxTemplateNo()),
                                Expanded(child: CheckBoxTemplateNA()),

                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                alignment: AlignmentDirectional.centerStart,
                                child: Text(
                                  'Appliance Safe to Use ',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 16
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(child: CheckBoxTemplateYes()),
                                Expanded(child: CheckBoxTemplateNo()),
                                Expanded(child: CheckBoxTemplateNA()),

                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all( 8.0),
                              child: Container(
                                height: 150,
                                child: Material(
                                  elevation: 2.0,
                                  // borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: TextField(
                                    onChanged: (String value){},
                                    cursorColor: Colors.deepOrange,
                                    decoration: InputDecoration(
                                        hintText: "Defects Identified...",
                                        suffixIcon: Material(
                                          elevation: 0,
                                          borderRadius: BorderRadius.all(Radius.circular(30)),
                                          child: Icon(
                                            Icons.close,
                                            color: Colors.red,
                                          ),
                                        ),
                                        border: InputBorder.none,
                                        contentPadding:
                                        EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                alignment: AlignmentDirectional.centerStart,
                                child: Text(
                                  'Label and Notice Issued ',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 16
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(child: CheckBoxTemplateYes()),
                                Expanded(child: CheckBoxTemplateNo()),
                                Expanded(child: CheckBoxTemplateNA()),

                              ],
                            ),

                          ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: Colors.redAccent),
                          child: FlatButton(
                            child: Text(
                              "Save",
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

                  ],
                )),
          ),
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
    const Item('NA'),
    const Item('RS'),
    const Item('OF'),
    const Item('FL'),
    const Item('BF'),
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