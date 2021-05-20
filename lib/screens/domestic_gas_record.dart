import 'package:flutter/material.dart';
import 'package:cmra/components/rounded_container.dart';
import 'package:cmra/screens/customer.dart';


class DomesticGasRecord extends StatelessWidget {
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
                    "Domestic Gas Record",
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
      body: Column(
        children: [
          SingleChildScrollView(
            child: Column(
            children:[
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomerForm()));
              },
              child: RoundedContainer(
                margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16),
                padding: const EdgeInsets.all(.0),
                child: ListTile(
                  title: Text("Domestic Gas Record",
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.black, size: 20,),
                ),
              ),
            ),
            RoundedContainer(
              margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16),
              padding: const EdgeInsets.all(.0),
              child: ListTile(
                title: Text("New Domestic Gas Record",
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.black, size: 20,),
              ),
            ),
            RoundedContainer(
              margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16),
              padding: const EdgeInsets.all(.0),
              child: ListTile(
                title: Text("Domestic Oil Record",
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.black, size: 20,),
              ),
            ),
            RoundedContainer(
              margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16),
              padding: const EdgeInsets.all(.0),
              child: ListTile(
                title: Text("Miscellanous Record",
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.black, size: 20,),
              ),
            ),
            RoundedContainer(
              margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16),
              padding: const EdgeInsets.all(.0),
              child: ListTile(
                title: Text("Job Sheet",
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.black, size: 20,),
              ),
            ),
            ])
          ),
          Spacer(),
          Padding(
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


        ],
      ),
    );
  }
}
