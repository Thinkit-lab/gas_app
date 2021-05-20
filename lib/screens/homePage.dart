import 'package:cmra/screens/new_record.dart';
import 'package:flutter/material.dart';
import 'package:cmra/components/rounded_container.dart';


class HomePage extends StatelessWidget {
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.fastfood,color: Colors.white, size: 40,),
                ),
                Center(
                  child: Column(
                    children: [
                      Text(
                        "Gas Work Application",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'LobsterTwo',
                            fontWeight: FontWeight.w700,
                            fontSize: 22),
                      ),
                      Text(
                        "Faster.   Better.   More  Efficient.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.forward_outlined,color: Colors.white, size: 40,),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NewRecordPage()));
            },
            child: RoundedContainer(
              margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16),
              padding: const EdgeInsets.all(.0),
              child: ListTile(
                leading: Icon(
                  Icons.insert_drive_file_outlined,
                  color: Colors.black,
                ),
                title: Text("New Record",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
              ),
            ),
          ),
          RoundedContainer(
            margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16),
            padding: const EdgeInsets.all(.0),
            child: ListTile(
              leading: Icon(
                Icons.file_present,
                color: Colors.black,
              ),
              title: Text("New Estimate, Quote or Invoice", style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
            ),
          ),
          RoundedContainer(
            margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16),
            padding: const EdgeInsets.all(.0),
            child: ListTile(
              leading: Icon(
                Icons.calendar_today_outlined,
                color: Colors.black,
              ),
              title: Text("Calender", style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
            ),
          ),
          RoundedContainer(
            margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16),
            padding: const EdgeInsets.all(.0),
            child: ListTile(
              leading: Icon(
                Icons.person_outline,
                color: Colors.black,
              ),
              title: Text("Customers",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
            ),
          ),
          RoundedContainer(
            margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16),
            padding: const EdgeInsets.all(.0),
            child: ListTile(
              leading: Icon(
                Icons.location_on_outlined,
                color: Colors.black,
              ),
              title: Text("Job Addresses", style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
            ),
          ),
          RoundedContainer(
            margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16),
            padding: const EdgeInsets.all(.0),
            child: ListTile(
              leading: Icon(
                Icons.calculate,
                color: Colors.black,
              ),
              title: Text("Gas Rate Calculator", style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
            ),
          ),
          RoundedContainer(
            margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16),
            padding: const EdgeInsets.all(.0),
            child: ListTile(
              leading: Icon(
                Icons.file_copy_outlined,
                color: Colors.black,
              ),
              title: Text('Existing Records & Drafts',
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
            ),
          ),
          RoundedContainer(
            margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16),
            padding: const EdgeInsets.all(.0),
            child: ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: Text("Settings", style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          RoundedContainer(
            color: Colors.redAccent,
            margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16),
            padding: const EdgeInsets.all(.0),
            child: Container(
              alignment: AlignmentDirectional.center,
              child: ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(left:80.0),
                  child: Icon(
                    Icons.sync,
                    color: Colors.white,
                  ),
                ),
                title: Text("Sync Data Now", style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white
                ),),
              ),
            ),
          ),


        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffff3a5a),
        child: Icon(Icons.chat, color: Colors.white, size: 35,),
        onPressed: () {
        },
      ),
    );
  }
}
