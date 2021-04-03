import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'package:webview_flutter/webview_flutter.dart';

class UrlBerita extends StatelessWidget {
  final String url;

  UrlBerita(this.url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87),
        title: Text('Berita Saham',
          style: TextStyle(color: kMainColor, fontWeight: FontWeight.bold),),
        backgroundColor: kLightColor,
        elevation: 0,
      ),
//      extendBodyBehindAppBar: true,
      body: WebView(
        initialUrl: url,
      ),
    );
  }
}  