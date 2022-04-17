import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp/core/widgets/drawer.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class HireCoach extends StatefulWidget {
  @override
  _HireCoachState createState() => _HireCoachState();
}

class _HireCoachState extends State<HireCoach> {
  @override
  var scaffoldKey = GlobalKey<ScaffoldState>();
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            key: scaffoldKey,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(80),
              child: AppBar(
                leading: IconButton(
                    padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                    icon: Image.asset(
                      'images/drawer.png',
                      color: Colors.white,
                      height: 40,
                    ),
                    onPressed: () {
                      scaffoldKey.currentState?.openDrawer();
                    }),
                backgroundColor: Colors.black,
                actions: <Widget>[
                  Padding(
                      padding: const EdgeInsets.fromLTRB(0, 25, 100, 0),
                      child: Text(
                        'Fit Nepal',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "SanFranciscos",
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ),
            extendBodyBehindAppBar: true,
            drawer: MainDrawer(),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 150, 0, 10),
                    child: CircleAvatar(
                      radius: 70,
                      child: ClipOval(
                        child: Image.asset(
                          'images/coach1.jpg',
                          height: 150,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                    child: Container(
                      height: 60,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 100),
                          child: Text(
                            'Raj Kumar Tamang',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(children: [
                        Icon(Icons.email),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'RajKumar97@gmail.com',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        )
                      ])),
                  Padding(
                      padding: const EdgeInsets.only(left: 0, top: 10),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Icon(Icons.perm_identity_outlined),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'C2',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ])),
                  Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Icon(Icons.phone_android),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            '98765557877',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ])),
                  Padding(
                      padding: const EdgeInsets.only(left: 0, top: 10),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Image.asset(
                            "images/experience.jpg",
                            height: 40,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            '10+ years',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ])),
                  Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Image.asset(
                            "images/about.png",
                            height: 30,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Currently working at Ocean Fitness Plus',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ])),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(150, 20, 30, 10),
                        child: Consumer(
                          builder: (context, ref, child) => RaisedButton(
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(),
                            ),
                            onPressed: () async {},
                            padding: const EdgeInsets.all(10.0),
                            textColor: Colors.white,
                            child: const Text("Hire",
                                style: TextStyle(fontSize: 15)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 10),
                    child: CircleAvatar(
                      radius: 70,
                      child: ClipOval(
                        child: Image.asset(
                          'images/gaurav.jpg',
                          height: 150,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                    child: Container(
                      height: 60,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 100),
                          child: Text(
                            'Gaurav Shrestha',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(children: [
                        Icon(Icons.email),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'gauravedits1000@gmail.com',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ])),
                  Padding(
                      padding: const EdgeInsets.only(left: 0, top: 10),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Icon(Icons.perm_identity_outlined),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'C8',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ])),
                  Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Icon(Icons.phone_android),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            '9810892754',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ])),
                  Padding(
                      padding: const EdgeInsets.only(left: 0, top: 10),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Image.asset(
                            "images/experience.jpg",
                            height: 40,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            '4+ years',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ])),
                  Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Image.asset(
                            "images/about.png",
                            height: 30,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Currently working at Ocean Fitness Plus',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ])),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(150, 20, 30, 10),
                        child: Consumer(
                          builder: (context, ref, child) => RaisedButton(
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(),
                            ),
                            onPressed: () async {},
                            padding: const EdgeInsets.all(10.0),
                            textColor: Colors.white,
                            child: const Text("Hire",
                                style: TextStyle(fontSize: 15)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 10),
                    child: CircleAvatar(
                      radius: 70,
                      child: ClipOval(
                        child: Image.asset(
                          'images/coach3.jpg',
                          height: 150,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                    child: Container(
                      height: 60,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 100),
                          child: Text(
                            'Subhash Devkota',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(children: [
                        Icon(Icons.email),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'subhash7@gmail.com',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ])),
                  Padding(
                      padding: const EdgeInsets.only(left: 0, top: 10),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Icon(Icons.perm_identity_outlined),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'C12',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ])),
                  Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Icon(Icons.phone_android),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            '9844556677',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ])),
                  Padding(
                      padding: const EdgeInsets.only(left: 0, top: 10),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Image.asset(
                            "images/experience.jpg",
                            height: 40,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            '6+ years',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ])),
                  Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Image.asset(
                            "images/about.png",
                            height: 30,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Currently working at Life Physical Fitness',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ])),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(150, 20, 30, 10),
                        child: Consumer(
                          builder: (context, ref, child) => RaisedButton(
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(),
                            ),
                            onPressed: () async {},
                            padding: const EdgeInsets.all(10.0),
                            textColor: Colors.white,
                            child: const Text("Hire",
                                style: TextStyle(fontSize: 15)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 10),
                    child: CircleAvatar(
                      radius: 70,
                      child: ClipOval(
                        child: Image.asset(
                          'images/coach5.jpg',
                          height: 150,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                    child: Container(
                      height: 60,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, left: 100),
                          child: Text(
                            'Sugam Basnet',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(children: [
                        Icon(Icons.email),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: FlatButton(
                            child: Text(
                              'sugambasnet0@gmail.com',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                            onPressed: () {},
                          ),
                        )
                      ])),
                  Padding(
                      padding: const EdgeInsets.only(left: 0, top: 10),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Icon(Icons.perm_identity_outlined),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            'C6',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ])),
                  Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Icon(Icons.phone_android),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text(
                            '9822772754',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ])),
                  Padding(
                      padding: const EdgeInsets.only(left: 0, top: 10),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Image.asset(
                            "images/experience.jpg",
                            height: 40,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            '5+ years',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ])),
                  Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Image.asset(
                            "images/about.png",
                            height: 30,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Currently working at Ocean Fitness Plus',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ])),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(150, 20, 30, 10),
                        child: Consumer(
                          builder: (context, ref, child) => RaisedButton(
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(),
                            ),
                            onPressed: () async {},
                            padding: const EdgeInsets.all(10.0),
                            textColor: Colors.white,
                            child: const Text("Hire",
                                style: TextStyle(fontSize: 15)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                ],
              ),
            )));
  }
}
