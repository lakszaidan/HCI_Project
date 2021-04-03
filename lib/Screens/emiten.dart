import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Drawer/myDrawer.dart';
import 'package:flutter_auth/Screens/Kategori/agraria.dart';
import 'package:flutter_auth/Screens/Kategori/konstruksi.dart';
import 'package:flutter_auth/Screens/Kategori/konsumsi.dart';
import 'package:flutter_auth/Screens/Kategori/perbankan.dart';
import 'package:flutter_auth/Screens/Kategori/pertambangan.dart';
import 'package:flutter_auth/constants.dart';

class Emiten extends StatefulWidget {
  @override
  _EmitenState createState() => _EmitenState();
}

class _EmitenState extends State<Emiten> {
  BoxDecoration decor = BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: kMainColor, width: 1));

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: kPrimaryColor
          ),
          toolbarHeight: 120,
          elevation: 0,
          backgroundColor: Color(0xFFFFFFFF),
          title: Column(
            children: [
              Row(
                children: [
                  Text(
                    'StocksCharts',
                    style: TextStyle(
                        color: kMainColor, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.insert_chart,
                    color: kMainColor,
                    size: 23,
                  ),
                ],
              ),
              
            ],
          ),
          bottom: TabBar(
            labelPadding: EdgeInsets.symmetric(horizontal: 8),
            isScrollable: true,
            unselectedLabelColor: Colors.black87,
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: kMainColor),
            tabs: [
              Tab(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: decor,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('Pertambangan'),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: decor,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('Keuangan'),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: decor,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('Konsumen'),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: decor,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('Agrikultur'),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: decor,
                  child: Align(
                      alignment: Alignment.center,
                      child: Text('Infrastruktur')),
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(0),
          child: TabBarView(
            children: [
              Pertambangan(),
              Keuangan(),
              Konsumen(),
              Agraria(),
              Infrastruktur()
            ],
          ),
        ),
      ),
    );
  }
}
