import 'package:flutter/cupertino.dart';

import 'styles.dart';
import 'product_list_tab.dart';
import 'search_tab.dart';
import 'shopping_cart_tab.dart';

class CupertinoStoreApp extends StatelessWidget {
  const CupertinoStoreApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoStoreHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CupertinoStoreHomePage extends StatelessWidget {
  const CupertinoStoreHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const<BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            title: Text('Products',)
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            title: Text('Search',)
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.shopping_cart),
            title: Text('Cart',)
          ),
        ],
      ),
      tabBuilder: (context, index){
        switch (index) {
          case 0:
            return CupertinoTabView(builder: (context){
              return CupertinoPageScaffold(
                child: ProductListTab(),
              );
            });
            break;
          case 1:
            return CupertinoTabView(builder: (context){
              return CupertinoPageScaffold(
                child: SearchTab(),
              );
            });
            break;
          case 2:
            return CupertinoTabView(builder: (context){
              return CupertinoPageScaffold(
                child: ShoppingCarTab(),
              );
            });
            break;

          default:
        }

      },
    );
  }
}