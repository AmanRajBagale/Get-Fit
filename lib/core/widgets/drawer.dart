import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Drawer(
            child: Padding(
      padding: const EdgeInsets.fromLTRB(30, 30, 20, 0),
      child: Column(children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(0, 50, 0, 0),
        ),
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(20, 20, 0, 0),
          title: Text(
            'Home',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          hoverColor: Color.fromRGBO(194, 236, 255, 1),
          leading: Image.asset(
            'images/home.png',
            color: Color.fromRGBO(53, 6, 102, 1),
            height: 30,
          ),
          onTap: () {},
        ),
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(20, 20, 0, 0),
          title: Text('Notification',
              style: TextStyle(
                fontSize: 20,
              )),
          hoverColor: Color.fromRGBO(194, 236, 255, 1),
          leading: Image.asset(
            'images/notification.png',
            color: Color.fromRGBO(53, 6, 102, 1),
            height: 30,
          ),
          onTap: () {},
        ),
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(20, 20, 0, 0),
          title: Text(
            'Profile',
            style: TextStyle(fontSize: 20),
          ),
          hoverColor: Color.fromRGBO(194, 236, 255, 1),
          leading: Image.asset(
            'images/user.png',
            color: Color.fromRGBO(53, 6, 102, 1),
            height: 30,
          ),
          onTap: () {},
        ),
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(20, 20, 0, 0),
          title: Text(
            'About us',
            style: TextStyle(fontSize: 20),
          ),
          hoverColor: Color.fromRGBO(194, 236, 255, 1),
          leading: Image.asset(
            'images/information-button.png',
            color: Color.fromRGBO(53, 6, 102, 1),
            height: 30,
          ),
          onTap: () {},
        ),
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(20, 150, 0, 0),
          title: Text(
            'log Out',
            style: TextStyle(fontSize: 20),
          ),
          hoverColor: Color.fromRGBO(194, 236, 255, 1),
          leading: Image.asset(
            'images/logout.png',
            color: Color.fromRGBO(53, 6, 102, 1),
            height: 30,
          ),
          onTap: () {},
        ),
      ]),
    )));
  }
}
