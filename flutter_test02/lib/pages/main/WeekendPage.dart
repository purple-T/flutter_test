import 'package:flutter/material.dart';
import '../More/MoreDetail2.dart';

class WeekendPage extends StatefulWidget {
  WeekendPage({Key key}) : super(key: key);

  _WeekendPageState createState() => _WeekendPageState();
}

class _WeekendPageState extends State<WeekendPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        RaisedButton(
          child: Text("跳转页面"),
          onPressed: (){
            Navigator.pushNamed(context, '/moredetail');
            // Navigator.of(context).push(
            //   MaterialPageRoute(

            //     builder: (context)=>MoreDetail2("lallalalalal")

            //   )
            // );
          }
        )


      ]


    );
  }
}