import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHome(),
    );
  }
}



class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text('abin@163.com'),
              accountName: Text('Abin'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'http://cdn.duitang.com/uploads/item/201510/05/20151005084929_GRTWr.thumb.700_0.png'),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'http://pic23.nipic.com/20120817/10582814_144314336000_2.jpg'))),
            ),
            ListTile(title: Text('用户反馈'),trailing: Icon(Icons.feedback),),
            ListTile(title: Text('系统设置'),trailing: Icon(Icons.settings),),
            ListTile(title: Text('我要发布'),trailing: Icon(Icons.send),),
            Divider(),
            ListTile(title: Text('注销'),trailing: Icon(Icons.exit_to_app),),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        fixedColor: Colors.red,
        onTap: (int index){
          print(index);
          
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.movie_creation),title: Text('哈哈')),
          BottomNavigationBarItem(icon: Icon(Icons.movie_creation),title: Text('哈哈')),
          BottomNavigationBarItem(icon: Icon(Icons.movie_creation),title: Text('哈哈')),
          BottomNavigationBarItem(icon: Icon(Icons.movie_creation),title: Text('哈哈'))
        ],
      ),
    );
  }
}
