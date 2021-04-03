import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Drawer/myDrawer.dart';
import 'package:flutter_auth/constants.dart';

class ProfilePage extends StatelessWidget {
  Widget header(double width, double height) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          color: kPrimaryColor,
          width: double.infinity,
          height: height * 0.15,
        ),
        Positioned(
          top: 40,
          left: width * 0.325,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: kMainColor, width: 2)),
            child: CircleAvatar(
              radius: 70,
              backgroundColor: kLightColor,
              child: Icon(
                CupertinoIcons.person,
                size: 60,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget textfield(String isi, String label, bool obsecure){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          enabled: false,
          floatingLabelBehavior: FloatingLabelBehavior.auto
        ),
        initialValue: isi,
        obscureText: obsecure,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var data = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: kPrimaryColor),
        backgroundColor: kLightColor,
        title: Text(
          "Profil",
          style: TextStyle(color: kMainColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            header(data.width, data.height),
            SizedBox(
              height: data.height * 0.1,
            ),
            Text(
              'Ravi "Investor Muda" Haryo',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Container(
              color: kSecondaryColor,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.only(left: 20, top: 30, bottom: 30),
              alignment: Alignment.topLeft,
              child: Text(
              'Watchlist: 5',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ),
            SizedBox(
              height: 20
            ),
            textfield('Ravi Haryo', 'Nama', false),
            textfield('ravisolo@mail.com', 'Email', false),
            textfield('hahahaha', 'Password', true),
          ],
        ),
      ),
    );
  }
}
