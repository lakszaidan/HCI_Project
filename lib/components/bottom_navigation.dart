import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Belajar/belajar.dart';
import 'package:flutter_auth/Screens/Berita/berita.dart';
import 'package:flutter_auth/Screens/emiten.dart';
import 'package:flutter_auth/Screens/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_auth/constants.dart';

class NavPage extends StatefulWidget {
  @override
  _NavPageState createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  int _selectedIndex = 0;

  final pages = [
    Homepage(),
    Emiten(),
    BelajarPage(),
    BeritaPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(_selectedIndex),
      bottomNavigationBar: SizedBox(
        height: 56,
        child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, size: 25,),
            label: 'Beranda',
            activeIcon: Icon(Icons.home_rounded, size: 25,),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.sd_storage_outlined, size: 25,),
              label: 'Emiten',
              activeIcon: Icon(Icons.sd_storage, size: 25,)),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.book, size: 25,),
              label: 'Belajar',
              activeIcon: Icon(CupertinoIcons.book_fill, size: 25,)),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/news2.png',
              width: 25,
            ),
            label: 'Berita',
            activeIcon: Image.asset(
              'assets/icons/newspaper.png',
              width: 25,
              color: kPrimaryColor,
            ),
          ),
        ],
        backgroundColor: kSecondaryColor,
        elevation: 0,
        unselectedItemColor: kSecondaryDarkColor,
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        fixedColor: kPrimaryColor,
        onTap: _onItemTapped,
      ),
      )
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
