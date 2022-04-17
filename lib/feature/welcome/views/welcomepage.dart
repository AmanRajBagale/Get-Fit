import 'package:flutter/material.dart';
import 'package:fyp/feature/login/views/login.dart';
import 'package:fyp/feature/signup/views/signup.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  Brightness? _brightness;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/Background.gif'),
                    fit: BoxFit.cover)),
            child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Stack(children: [
                  Container(
                    padding: const EdgeInsets.only(left: 120, top: 190),
                    child: const Text(
                      'Get Fit',
                      style: TextStyle(
                          fontFamily: "NotoSans",
                          color: Colors.black87,
                          fontSize: 40,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Container(
                    width: 350,
                    padding: EdgeInsets.fromLTRB(80, 330, 30, 0),
                    child: RaisedButton(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide()),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Mylogin()),
                        );
                      },
                      padding: EdgeInsets.all(10.0),
                      textColor: Color(0xff4c505b),
                      child: Text("Login",
                          style: TextStyle(fontSize: 15, color: Colors.white)),
                    ),
                  ),
                  Container(
                    width: 350,
                    padding: EdgeInsets.fromLTRB(80, 430, 30, 0),
                    child: RaisedButton(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide()),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MySignup()),
                        );
                      },
                      padding: EdgeInsets.all(10.0),
                      textColor: Color(0xff4c505b),
                      child: Text("Register",
                          style: TextStyle(fontSize: 15, color: Colors.white)),
                    ),
                  )
                ]))));
  }
}
