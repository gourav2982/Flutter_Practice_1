import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 350,
      child: Container(
        color: Colors.blue,
        child: ListView(
          children: const [
            DrawerHeader(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                    margin: EdgeInsets.zero,
                    decoration:
                        BoxDecoration(color: Color.fromRGBO(19, 121, 205, 1)),
                    accountName: Text('Gourav'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/Login_image.png"),
                    ),
                    accountEmail: Text('Gourav@gmail.com'))),
            ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                title: Text(
                  'Home',
                  textScaleFactor: 1.4,
                  style: TextStyle(color: Colors.white),
                )),
            ListTile(
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                title: Text(
                  'Mail me',
                  textScaleFactor: 1.4,
                  style: TextStyle(color: Colors.white),
                )),
            ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                title: Text(
                  'Profile',
                  textScaleFactor: 1.4,
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
