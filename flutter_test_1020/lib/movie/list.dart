import 'package:flutter/material.dart';
import 'package:dio/dio.dart';


Dio dio = new Dio();

class MovieList extends StatefulWidget {
  MovieList({Key key,@required this.mt}) : super(key: key);

  final String mt;
  
  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {

  //数据
  var mlist = [];

  @override
  void initState() { 
    super.initState();
    getDataList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text('hhahhah---'+ widget.mt+ '---${mlist.length}'),
    );
  }

  

  getDataList() async {
    Response response = await dio.get('http://47.105.155.128/mobile/Goods/goods_list');

    var result = response.data;
    print(result);
    setState(() {
      mlist = result['datas'];
    });
  }
}
