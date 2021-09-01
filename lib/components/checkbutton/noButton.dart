import 'package:flutter/material.dart';


class NoButton extends StatefulWidget {
  @override
  _NoButtonState createState() => _NoButtonState();
}

class _NoButtonState extends State<NoButton> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      height: 30,
      child: FlatButton(
        onPressed: (){
          showDialog(context: context, builder: (context){
            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
              elevation: 16,
              child: Container(
                height: 100,
                width: 450,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '(ARE YOU SURE! WARNING NOTICE MUST BE FILLED OUT)',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          wordSpacing: 5
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.red, width: 2),
                          ),
                          child: GestureDetector(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical:4.0),
                              child: Text(
                                'Yes',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:8.0),
                          child: Text('OR'),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.red, width: 2),
                          ),
                          child: GestureDetector(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical:4.0),
                              child: Text(
                                  'No',
                                textAlign: TextAlign.center,
                              ),
                            ),

                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              );
          });
        },
        child: Text(
          'NO',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Lato',
              fontSize: 18
          ),
        ),
      ),
    );
  }
}