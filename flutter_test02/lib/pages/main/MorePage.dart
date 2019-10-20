import 'package:flutter/material.dart';

class MorePage extends StatefulWidget {
  MorePage({Key key}) : super(key: key);

  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 30,
      itemBuilder: (context,index)=>ListTile(
        title: Text("title"),
        subtitle: Text("subTitle"),
      ),


    );
  }
}