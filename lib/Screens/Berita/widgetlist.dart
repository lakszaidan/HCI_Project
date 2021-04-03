import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Berita/berita.dart';
import 'package:flutter_auth/constants.dart';

Widget listWidget(ListItem item) {
  return Card(
    // color: kSecondaryDarkColor.withOpacity(0.2),
    elevation: 1.0,
    margin: EdgeInsets.only(bottom: 0, top: 10),
    child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: [
          Hero(
            transitionOnUserGestures: true,
            tag: '${item.newsTitle}',
            child: Container(
              width: 120.0,
              height: 80.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(item.imgUrl), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          SizedBox(width: 5.0),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.newsTitle,
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(
                height: 5.0,
              ),
              Divider(height: 5),
              Row(
                children: [
                  Icon(Icons.person, color: kSecondaryDarkColor,),
                  Text(
                    item.author,
                    style: TextStyle(fontSize: 12.0),
                  ),
                  SizedBox(width: 10.0),
                  Icon(Icons.date_range, color: kSecondaryDarkColor,),
                  Text(
                    item.date,
                    style: TextStyle(fontSize: 12.0),
                  ),
                ],
              )
            ],
          ))
        ],
      ),
    ),
  );
}
