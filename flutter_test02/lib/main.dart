
import 'package:flutter/material.dart';
import 'pages/tabs/Tabs.dart';
import 'pages/More/MoreDetail2.dart';
import 'pages/More/MoreDetailPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home:Tabs(),
      routes: {
        '/moredetail':(context)=>MoreDetail2("content"),
        '/moreDetailPage':(context)=>MoreDetailPage()

      },
    );
  }
}

