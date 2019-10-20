import 'package:flutter/material.dart';
import '../main/HomePage.dart';
import '../main/MorePage.dart';
import '../main/MusicPage.dart';
import '../main/WeekendPage.dart';


class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _curIndex = 0;

  final List list = [
    HomePage(),
    MusicPage(),
    WeekendPage(),
    MorePage()

  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("HomePage"),
        ),
        body: list[_curIndex],
        
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _curIndex,
          onTap: (index){
            // print("$index");
            setState(() {
             _curIndex = index;
            });

          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("home")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note),
              title: Text("music")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.weekend),
              title: Text("weekend")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more),
              title: Text("more")
            ),


          ],
        ),
      );
  }
}