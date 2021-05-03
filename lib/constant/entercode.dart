import 'package:flutter/material.dart';
import 'dart:math';
import 'package:mapfollow/screens/mapmain.dart';

class EntercodePage extends StatefulWidget {
  @override
  _EntercodePageState createState() => _EntercodePageState();
}

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random();
String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
    length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

String r = getRandomString(8);

class _EntercodePageState extends State<EntercodePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                  child: Text(
                    'Your Code : $r' ,
                    style:
                    TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                  ),
                ),
                // Container(
                //   padding: EdgeInsets.fromLTRB(260.0, 125.0, 0.0, 0.0),
                //   child: Text(
                //     '.',
                //     style: TextStyle(
                //         fontSize: 80.0,
                //         fontWeight: FontWeight.bold,
                //         color: Colors.green),
                //   ),
                // )
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Put Code',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        // hintText: 'EMAIL',
                        // hintStyle: ,
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                  ),
                  SizedBox(height: 10.0),
                  // TextField(
                  //   decoration: InputDecoration(
                  //       labelText: 'PASSWORD ',
                  //       labelStyle: TextStyle(
                  //           fontFamily: 'Montserrat',
                  //           fontWeight: FontWeight.bold,
                  //           color: Colors.grey),
                  //       focusedBorder: UnderlineInputBorder(
                  //           borderSide: BorderSide(color: Colors.green))),
                  //   obscureText: true,
                  // ),
                  // SizedBox(height: 10.0),
                  // TextField(
                  //   decoration: InputDecoration(
                  //       labelText: 'NICK NAME ',
                  //       labelStyle: TextStyle(
                  //           fontFamily: 'Montserrat',
                  //           fontWeight: FontWeight.bold,
                  //           color: Colors.grey),
                  //       focusedBorder: UnderlineInputBorder(
                  //           borderSide: BorderSide(color: Colors.green))),
                  // ),
                  SizedBox(height: 50.0),
                  Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.greenAccent,
                        color: Colors.green,
                        elevation: 7.0,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) => MapMain()
                                )
                            );
                          },
                          child: Center(
                            child: Text(
                              'Join',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                        ),
                      )),
                  SizedBox(height: 20.0),
                  Container(
                    height: 40.0,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 1.0),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                          this.setState(() {});
                        },
                        child:

                        Center(
                          child: Text('Go Back',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat')),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ]));
  }
}
