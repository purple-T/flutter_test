import 'package:flutter/cupertino.dart';

class SearchTab extends StatefulWidget {
  SearchTab({Key key}) : super(key: key);

  _SearchTabState createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text('Search'),
        )
      ],
    );
  }
}