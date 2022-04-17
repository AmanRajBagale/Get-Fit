import 'package:flutter/material.dart';
import 'package:fyp/feature/home/views/home.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({Key? key}) : super(key: key);

  @override
  _MyloginState createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            body: Stack(children: [
      Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/bckgrouudimage.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 30, top: 150),
              child: const Text(
                'Get Fit',
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.1,
                    right: 25,
                    left: 25),
                child: Column(children: [
                  TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.white60,
                          filled: true,
                          hintText: "Email Adress",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)))),
                  const SizedBox(
                    //to create gap between emailbox and password box//
                    height: 20,
                  ),
                  TextField(
                    obscureText:
                        true, //this property helps to hide those letters while typing in password
                    decoration: InputDecoration(
                      fillColor: Colors.white60,
                      filled: true,
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 200, top: 1),
                        child: const Text(
                          'Forget password?',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.fromLTRB(120, 0, 30, 10),
                          child: RaisedButton(
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide()),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()),
                              );
                            },
                            padding: EdgeInsets.all(10.0),
                            textColor: Color(0xff4c505b),
                            child: Text("Login",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white)),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.fromLTRB(60, 0, 30, 10),
                          child: Text(
                            'Have no account, Sign up',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    ])));
  }
}
