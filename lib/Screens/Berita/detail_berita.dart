import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Berita/berita.dart';
import 'package:flutter_auth/constants.dart';

class DetailScreen extends StatelessWidget {
  final String tag;
  final ListItem item;
  final String content;

  DetailScreen(
      {Key key,
      @required this.item,
      @required this.tag,
      @required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black87),
          title: Text(
            'Berita Saham',
            style: TextStyle(color: kMainColor, fontWeight: FontWeight.bold),
          ),
          backgroundColor: kLightColor,
          elevation: 2,
        ),
        backgroundColor: kLightColor,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      child: Text(
                        item.newsTitle,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20)),
                  Hero(
                    tag: '${item.newsTitle}',
                    child: Image.network(item.imgUrl),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Icon(Icons.person),
                              Text(
                                ' ${item.author}',
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Icon(Icons.date_range),
                              Text(
                                ' ${item.date}',
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Padding(
                          child: Text(
                            item.content,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          padding: EdgeInsets.all(10),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
