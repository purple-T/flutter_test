import 'package:flutter/material.dart';

class MoreDetail2 extends StatefulWidget {
  String content;
  MoreDetail2(this.content, {Key key}) : super(key: key);

  _MoreDetail2State createState() => _MoreDetail2State(this.content);
}

class _MoreDetail2State extends State<MoreDetail2> {
  String content;
  _MoreDetail2State(this.content);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MoreDetail2"),),
      floatingActionButton: FloatingActionButton(
        child: Text("返回"),
        onPressed: (){
          Navigator.of(context).pop();


        },

      ),
      body: Text(this.content),

    );
  }
}