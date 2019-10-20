import 'package:flutter/material.dart';

class MoreDetailPage extends StatelessWidget {
  const MoreDetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("More Details"),
        ),
        body: Text("更多设置"),
      );
  }
}
