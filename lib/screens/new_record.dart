import 'package:cmra/screens/domestic_gas_record.dart';
import 'package:flutter/material.dart';
import 'package:cmra/components/rounded_container.dart';


class NewRecordPage extends StatelessWidget {
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
                    "New Record",
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
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DomesticGasRecord()));
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
              title: Text("Plumbing Section",
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


        ],
      ),
    );
  }
}
