import 'package:flutter/material.dart';
import 'package:fyp/feature/welcome/views/welcomepage.dart';

class MySignup extends StatefulWidget {
  const MySignup({Key? key}) : super(key: key);

  @override
  _MySignupState createState() => _MySignupState();
}

class _MySignupState extends State<MySignup> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.white;
      }
      return Colors.blue;
    }

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/bckgrouudimage.jpg'),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 80, top: 120, bottom: 50),
              child: const Text(
                'Get Fit',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.3,
                    right: 25,
                    left: 25),
                child: Column(children: [
                  Row(children: [
                    Container(
                      width: 170,
                      height: 50,
                      child: TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.white60,
                              filled: true,
                              hintText: "Firstname",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                        width: 170,
                        height: 50,
                        child: TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.white60,
                                filled: true,
                                hintText: "Lastname",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))))),
                  ]),
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
                      hintText: "Email Address",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
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
                    //to create gap between emailbox and password box//
                    height: 20,
                  ),
                  TextField(
                    obscureText:
                        true, //this property helps to hide those letters while typing in password
                    decoration: InputDecoration(
                      fillColor: Colors.white60,
                      filled: true,
                      hintText: "Confirm-Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(children: [
                    Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    Text(
                      'I accept terms and privacy policy ',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ]),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 15, 20),
                      child: Text(
                        'Click here to learn about Terms and condition',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                          width: 200,
                          padding: EdgeInsets.fromLTRB(100, 0, 0, 10),
                          child: RaisedButton(
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide()),
                            onPressed: () {},
                            padding: EdgeInsets.all(10.0),
                            textColor: Color(0xff4c505b),
                            child: Text("Sign up",
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
                            'Already have account, Login',
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
    );
  }
}
