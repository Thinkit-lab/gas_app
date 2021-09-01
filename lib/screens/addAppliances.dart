
import 'package:cmra/components/checkBoxes/checkbox_n/tick.dart';
import 'package:cmra/components/checkbutton/n/aButton.dart';
import 'package:cmra/components/checkbutton/noButton.dart';
import 'package:cmra/components/checkbutton/yesButton.dart';
import 'package:cmra/components/dropdown/flueType.dart';
import 'package:cmra/components/dropdown/location.dart';
import 'package:cmra/components/dropdown/type.dart';
import 'package:cmra/screens/appliances.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AddAppliance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.lightBlue,
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
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Material(
                                      elevation: 2.0,
                                      child: Type())),
                            ),
                            Padding(
                              padding: const EdgeInsets.all( 8.0),
                              child: Container(
                                child: Material(
                                  elevation: 2.0,
                                  // borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: TextField(
                                    onChanged: (String value){},
                                    cursorColor: Colors.lightBlue,
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
                                    cursorColor: Colors.lightBlue,
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
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Material(
                                      elevation: 2.0,
                                      child: Location())),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                  child: Material(
                                      elevation: 2.0,
                                  child: FlueType())),
                            ),
                            Padding(
                              padding: const EdgeInsets.all( 8.0),
                              child: Container(
                                child: Material(
                                  elevation: 2.0,
                                  // borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: TextField(
                                    onChanged: (String value){},
                                    cursorColor: Colors.lightBlue,
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
                                    cursorColor: Colors.lightBlue,
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
                                YesButton(),
                                NoButton(),
                                NaButton(),

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
                                YesButton(),
                                NoButton(),
                                NaButton(),

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
                                    cursorColor: Colors.lightBlue,
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
                              decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(10),topRight: Radius.circular(10)), color: Colors.lightBlue,),
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
                                    cursorColor: Colors.lightBlue,
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
                                    cursorColor: Colors.lightBlue,
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
                                    cursorColor: Colors.lightBlue,
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
                              decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(10),topRight: Radius.circular(10)), color: Colors.lightBlue,),
                              width: MediaQuery.of(context).size.width,
                              height: 30,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
                                child: Text(
                                  'Combustion Analyser Reading Low',
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
                                    cursorColor: Colors.lightBlue,
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
                                    cursorColor: Colors.lightBlue,
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
                                    cursorColor: Colors.lightBlue,
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
                              decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(10),topRight: Radius.circular(10)), color: Colors.lightBlue,),
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
                                    cursorColor: Colors.lightBlue,
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
                                          cursorColor: Colors.lightBlue,
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
                                        color: Colors.lightBlue,
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

                            SizedBox(
                              height: 10,
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
                                YesButton(),
                                NoButton(),
                                NaButton(),

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
                                YesButton(),
                                NoButton(),
                                NaButton(),

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
                                YesButton(),
                                NoButton(),
                                NaButton(),

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
                                YesButton(),
                                NoButton(),
                                NaButton(),

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
                                YesButton(),
                                NoButton(),
                                NaButton(),

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
                                YesButton(),
                                NoButton(),
                                NaButton(),

                              ],
                            ),
                            SizedBox(
                              height: 10,
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
                                    cursorColor: Colors.lightBlue,
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
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              'Take or Upload Warning Notice Photos',
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 18
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40),
                              child: Container(
                                height: 150,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.grey.shade500
                                  )
                                ),
                                child: Material(
                                  elevation: 2.0,
                                  // borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: FlatButton(
                                    child: Container(
                                      child: Icon(
                                        Icons.photo_camera_outlined,
                                        size: 100,
                                        color: Colors.black,
                                      ),
                                    ),
                                  )
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
                                    cursorColor: Colors.lightBlue,
                                    decoration: InputDecoration(
                                        hintText: "Gas Reference",
                                        // suffixIcon: Material(
                                        //   elevation: 0,
                                        //   borderRadius: BorderRadius.all(Radius.circular(30)),
                                        //   child: Icon(
                                        //     Icons.close,
                                        //     color: Colors.red,
                                        //   ),
                                        // ),
                                        border: InputBorder.none,
                                        contentPadding:
                                        EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
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
                                  Expanded(child: TickBox())
                                ],
                              ),
                            ),
                            // SizedBox(
                            //   height: 10,
                            // ),
                            Text(
                              'OR',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Lato',
                                color: Colors.lightBlue
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                                child: FlatButton(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    // height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        color: Colors.lightBlue),
                                    child: FlatButton(
                                      child: Text(
                                        "ADD WARNING NOTICE BY APP",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16),
                                      ),
                                      onPressed: () {
                                      },
                                    ),
                                  ),
                                )),

                          ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    // height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                        color: Colors.lightBlue),
                                    child: GestureDetector(
                                      onTap: (){

                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                                        child: Text(
                                          "Add Appliance",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Lato',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      // onPressed: () {
                                      // },
                                    ),
                                  )),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    // height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                        color: Colors.lightBlue),
                                    child: GestureDetector(
                                      onTap: (){

                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                                        child: Text(
                                          "Save",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Lato',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  )),
                            ),

                          ],
                        ),
                    )

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