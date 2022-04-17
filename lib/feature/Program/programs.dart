import 'package:flutter/material.dart';
import 'package:fyp/core/widgets/drawer.dart';
import 'package:fyp/feature/Program/chestworkout/chestworkout.dart';

class Programs extends StatefulWidget {
  @override
  _ProgramsState createState() => _ProgramsState();
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

class _ProgramsState extends State<Programs> {
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
                        'Programs',
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
                            padding: EdgeInsets.fromLTRB(10, 120, 0, 0),
                            child: Row(children: [
                              Container(
                                  padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                  child: Image.asset(
                                    'images/legs.jpg',
                                    height: 70,
                                  )),
                              Container(
                                  padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                  child: FlatButton(
                                    child: Text('Chest Workouts',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "SanFranciscos",
                                          fontSize: 25,
                                        )),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                chestWorkout()),
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
                                  'images/fatburner.jpg',
                                  height: 150,
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                  child: FlatButton(
                                    child: Text('Shoulders Workouts',
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
                                  'images/abs.jpg',
                                  height: 70,
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                  child: FlatButton(
                                    child: Text('Biceps Workouts',
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
                                  'images/arms.jpg',
                                  height: 70,
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                  child: FlatButton(
                                    child: Text('Triceps Workout',
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
                                  'images/chest.jpg',
                                  height: 70,
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                  child: FlatButton(
                                    child: Text('Back Workout',
                                        style: TextStyle(
                                          fontFamily: "SanFranciscos",
                                          fontSize: 25,
                                        )),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                chestWorkout()),
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
                                  'images/backkk.jpg',
                                  height: 70,
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                  child: FlatButton(
                                    child: Text('Legs Workout',
                                        style: TextStyle(
                                          fontFamily: "SanFranciscos",
                                          fontSize: 25,
                                        )),
                                    onPressed: () {},
                                  )),
                            ])),
                      ]))
                    ])))));
  }
}
