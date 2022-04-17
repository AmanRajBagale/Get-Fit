import 'package:flutter/material.dart';
import 'package:fyp/core/widgets/drawer.dart';
import 'package:fyp/feature/Feedback/feedback.dart';
import 'package:fyp/feature/Program/programs.dart';
import 'package:fyp/feature/hireCoach/hirecoach.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

ThemeData _lightTheme = ThemeData(
    accentColor: Colors.blue,
    brightness: Brightness.light,
    primaryColor: Colors.blue);
ThemeData _darkTheme = ThemeData(
    accentColor: Colors.red,
    brightness: Brightness.dark,
    primaryColor: Colors.amber);
bool _light = true;

class _HomePageState extends State<HomePage> {
  @override
  var scaffoldKey = GlobalKey<ScaffoldState>();
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: _light ? _lightTheme : _darkTheme,
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
                        'Get Fit',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "SanFranciscos",
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(0, 23, 0, 0),
                      child: Switch(
                          value: _light,
                          onChanged: (state) {
                            setState(() {
                              _light = state;
                            });
                          }))
                ],
              ),
            ),
            extendBodyBehindAppBar: true,
            drawer: MainDrawer(),
            body: Container(
                child: Scaffold(
                    backgroundColor: Colors.transparent,
                    body: Stack(children: [
                      SingleChildScrollView(
                          child: Column(children: [
                        Container(
                            color: Colors.white.withOpacity(0.5),
                            padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                            child: Row(children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Image.asset(
                                  'images/coach.png',
                                  height: 50,
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                  child: FlatButton(
                                    child: Text('Coach Hire',
                                        style: TextStyle(
                                          fontFamily: "SanFranciscos",
                                          fontSize: 25,
                                        )),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HireCoach()),
                                      );
                                    },
                                  )),
                            ])),
                        Divider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                        Container(
                            color: Colors.white.withOpacity(0.5),
                            padding: EdgeInsets.fromLTRB(10, 40, 0, 0),
                            child: Row(children: [
                              Container(
                                  padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                  child: Image.asset(
                                    'images/program.jpg',
                                    height: 50,
                                  )),
                              Container(
                                  padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                  child: FlatButton(
                                    child: Text('Programs',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "SanFranciscos",
                                          fontSize: 25,
                                        )),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Programs()),
                                      );
                                    },
                                  )),
                            ])),
                        Divider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                        Container(
                            color: Colors.white.withOpacity(0.5),
                            padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                            child: Row(children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Image.asset(
                                  'images/notes.png',
                                  height: 40,
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                  child: FlatButton(
                                    child: Text('Note Exercise',
                                        style: TextStyle(
                                          fontFamily: "SanFranciscos",
                                          fontSize: 25,
                                        )),
                                    onPressed: () {},
                                  )),
                            ])),
                        Divider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                        Container(
                            color: Colors.white.withOpacity(0.5),
                            padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                            child: Row(children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Image.asset(
                                  'images/download.png',
                                  height: 40,
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                  child: FlatButton(
                                    child: Text('Download plans',
                                        style: TextStyle(
                                          fontFamily: "SanFranciscos",
                                          fontSize: 25,
                                        )),
                                    onPressed: () {},
                                  )),
                            ])),
                        Divider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                        Container(
                            color: Colors.white.withOpacity(0.5),
                            padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                            child: Row(children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Image.asset(
                                  'images/bar-chart.png',
                                  height: 40,
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                  child: FlatButton(
                                    child: Text('Gym Product',
                                        style: TextStyle(
                                          fontFamily: "SanFranciscos",
                                          fontSize: 25,
                                        )),
                                    onPressed: () {},
                                  )),
                            ])),
                        Divider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                        Container(
                            color: Colors.white.withOpacity(0.5),
                            padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                            child: Row(children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Image.asset(
                                  'images/notification.jpg',
                                  height: 40,
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.fromLTRB(50, 10, 0, 0),
                                  child: FlatButton(
                                    child: Text('Notification',
                                        style: TextStyle(
                                          fontFamily: "SanFranciscos",
                                          fontSize: 25,
                                        )),
                                    onPressed: () {},
                                  )),
                            ])),
                        Divider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                        Container(
                            color: Colors.white.withOpacity(0.5),
                            padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                            child: Row(children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Image.asset(
                                  'images/healthfacts.png',
                                  height: 40,
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                  child: FlatButton(
                                    child: Text('Health Facts',
                                        style: TextStyle(
                                          fontFamily: "SanFranciscos",
                                          fontSize: 25,
                                        )),
                                    onPressed: () {},
                                  )),
                            ])),
                        Divider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                        Container(
                            padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                            child: Row(children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Image.asset(
                                  'images/feedback.jpg',
                                  height: 40,
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                  child: FlatButton(
                                    child: Text('Feedback',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "SanFranciscos",
                                          fontSize: 25,
                                        )),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => UI22()),
                                      );
                                    },
                                  )),
                            ])),
                        Divider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                        Container(
                            color: Colors.white.withOpacity(0.5),
                            padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                            child: Row(children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Image.asset(
                                  'images/about.png',
                                  height: 40,
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.fromLTRB(50, 10, 0, 0),
                                  child: FlatButton(
                                    child: Text('About Us',
                                        style: TextStyle(
                                          fontFamily: "SanFranciscos",
                                          fontSize: 25,
                                        )),
                                    onPressed: () {},
                                  )),
                            ])),
                        Divider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                      ]))
                    ])))));
  }
}
