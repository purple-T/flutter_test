import 'package:flutter/cupertino.dart';

import 'package:provider/provider.dart';

import 'model/app_state_model.dart';

class ShoppingCarTab extends StatefulWidget {
  ShoppingCarTab({Key key}) : super(key: key);

  _ShoppingCarTabState createState() => _ShoppingCarTabState();
}

class _ShoppingCarTabState extends State<ShoppingCarTab> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(
      builder: (context,model,child){
        return CustomScrollView(
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text('Shopping Cart'),
            )
          ],
        );
      },
    );
  }
}