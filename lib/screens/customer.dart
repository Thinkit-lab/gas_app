import 'package:cmra/screens/appliances.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cmra/components/rounded_container.dart';


class CustomerForm extends StatelessWidget {
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
                    "Customer",
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
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.perm_contact_cal_outlined,color: Colors.white, size: 30,),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        child:
          SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
    child: Material(
    elevation: 2.0,
            child: Column(
        children:[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children:[
                    Expanded(
                      flex: 1,
                    child: Material(
                        elevation: 2.0,
                        // borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: DropdownScreen())),
                    SizedBox(
                      width: 2,
                    ),
                    Expanded(
                      flex: 2,
                        child: Material(
                          elevation: 2.0,
                          // borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: TextField(
                        onChanged: (String value){},
                        cursorColor: Colors.deepOrange,
                        decoration: InputDecoration(
                            hintText: "First Name",
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
                    )]
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
                      hintText: "Last Name",
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
                      hintText: "Company Name",
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
            color: Color(0xffff3a5a),
            height: 3,
          ),
        ),
          RoundedContainer(
            height: 40.0,
            color: Colors.redAccent,
            margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8),
            padding: const EdgeInsets.all(.0),
            child: Container(
              alignment: AlignmentDirectional.center,
              child: ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(left:60.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                title: Text("LookUp Address", style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white
                ),),
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
                      hintText: "Building / House Number",
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
                      hintText: "Street",
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
                      hintText: "Town / City",
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
                      hintText: "Region",
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
                      hintText: "Postcode",
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
              color: Color(0xffff3a5a),
              height: 3,
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
                      hintText: "Landline",
                      suffixIcon: Material(
                        elevation: 0,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: Icon(
                          Icons.call,
                          color: Colors.green,
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
                      hintText: "Mobile",
                      suffixIcon: Material(
                        elevation: 0,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: Icon(
                          Icons.call,
                          color: Colors.green,
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
              color: Color(0xffff3a5a),
              height: 3,
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
                      hintText: "Primary Email",
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
                      hintText: "Secondary Email",
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
              color: Color(0xffff3a5a),
              height: 3,
            ),
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
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AllAppliances()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          "Next",
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
            ),

          ],
        ),
    ]),
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