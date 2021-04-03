import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Drawer/profile.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/constants.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 2,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 50, left: 20),
              child: Text(
                'Menu',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),),
            Padding(padding: EdgeInsets.all(20)),
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              leading: Icon(Icons.person, color: kSecondaryDarkColor),
              title: Text(
                "Profil",
                style: TextStyle(fontSize: 15),
              ),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => ProfilePage())),
            ),
            Divider(
              height: 0.5,
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              leading: Icon(
                Icons.settings,
                color: kSecondaryDarkColor,
              ),
              title: Text(
                "Pengaturan",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              onTap: () {}
            ),
            Divider(height: 0.5),
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              leading: Icon(Icons.logout, color: kSecondaryDarkColor),
              title: Text(
                "Logout",
                style: TextStyle(fontSize: 15),
              ),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (BuildContext context) => LoginScreen()),
              ),
            ),
            Divider(height: 0.5),
          ],
        ),
      ),
    );
  }
}
