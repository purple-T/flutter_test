import 'package:flutter/material.dart';
import '../More/MoreDetailPage.dart';
class MusicPage extends StatelessWidget {
  const MusicPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text("首页跳转"),
        onPressed: (){

          Navigator.pushNamed(context, '/moreDetailPage');
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context)=>MoreDetailPage()

          //   )


          // );


        },
      ),
    
    );
  }
}