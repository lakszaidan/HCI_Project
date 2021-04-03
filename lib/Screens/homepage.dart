import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_auth/Screens/Drawer/myDrawer.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_auth/Screens/Webview/webview.dart';
import 'package:flutter_auth/Screens/emiten_list.dart';
import 'package:flutter_auth/components/charts.dart';
import 'package:flutter_auth/components/text_style.dart';
import 'package:flutter_auth/constants.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String url =
      'https://investasi.kontan.co.id/news/penjualan-batubara-dan-emas-naik-simak-rekomendasi-saham-united-tractors-untr';

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        automaticallyImplyLeading: true,
        title: Padding(
          padding: EdgeInsets.only(right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'StocksCharts',
                style:
                    TextStyle(color: kMainColor, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.insert_chart,
                color: kMainColor,
                size: 23,
              )
            ],
          ),
        ),
        backgroundColor: Color(0xFFFFFFFF),
        iconTheme: IconThemeData(color: Colors.black87),
        elevation: 0,
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: data.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'IHSG',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '6270',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF37AD00)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Index Harga Saham Gabungan',
                  ),
                  Text(
                    '+38 (+1.3%)',
                    style: hargaEmitenPlus,
                  ),
                ],
              ),
              Padding(
                child: SizedBox(
                  width: data.width - 10,
                  height: 200,
                  child: SimpleTimeSeriesChart(_createSampleData()),
                ),
                padding: EdgeInsets.only(top: 10, bottom: 40),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Daily's Trending",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  color: kMainColor,
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    leading: Container(
                      width: 110,
                      height: 200,
                      child: Image.network(
                      'https://foto.kontan.co.id/OQDxtr4tc-fVvySKo3NdYFk8ulw=/smart/2019/09/20/957740700p.jpg',
                      fit: BoxFit.cover,
                    ),
                    ),
                    title: Column(
                      children: [
                        Text(
                          'Penjualan batubara dan emas naik, simak rekomendasi saham United Tractors (UNTR)',
                          style: TextStyle(color: kLightColor, fontSize: 14),
                        ),
                        Divider(
                          color: kLightColor,
                        ),
                      ],
                    ),
                    subtitle: Text(
                      'Kontan.co.id',
                      style: TextStyle(color: kLightColor),
                    ),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UrlBerita(url),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Watchlist Saham",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                width: data.width,
                height: data.height * 0.55,
                child: EmitenList(),
              )
            ],
          ),
        ),
      ),
    );
  }

  static List<charts.Series<TimeSeriesSales, DateTime>> _createSampleData() {
    final data = [
      new TimeSeriesSales(new DateTime(2020, 9, 10), 3010),
      new TimeSeriesSales(new DateTime(2020, 9, 11), 4104),
      new TimeSeriesSales(new DateTime(2020, 9, 12), 5140),
      new TimeSeriesSales(new DateTime(2020, 9, 13), 3770),
      new TimeSeriesSales(new DateTime(2020, 9, 14), 5200),
      new TimeSeriesSales(new DateTime(2020, 9, 15), 5270),
      new TimeSeriesSales(new DateTime(2020, 9, 16), 6270),
    ];

    return [
      new charts.Series<TimeSeriesSales, DateTime>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (TimeSeriesSales sales, _) => sales.time,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

class TimeSeriesSales {
  final DateTime time;
  final int sales;

  TimeSeriesSales(this.time, this.sales);
}
