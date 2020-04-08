import 'package:flutter/material.dart';
import 'package:flutter_catalogue/page/favorisPage.dart';
import 'package:flutter_catalogue/page/notificationPage.dart';
import 'package:flutter_catalogue/utils/colors.dart';

import 'homePage.dart';

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
  bool divider;
  String dividerText;
}

class DrawerPage extends StatefulWidget {
  final drawerItems = [
    DrawerItem("Home", Icons.home),
    DrawerItem("Favoris", Icons.favorite),
    DrawerItem("Notifications", Icons.notifications),
  ];
  @override
  State<StatefulWidget> createState() {
    return new DrawerPageState();
  }
}

class DrawerPageState extends State<DrawerPage> {
  Size screenSizes;
  double cwidth;
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return HomePage();
      case 1:
        return FavorisPage();
      case 2:
        return NotificationPage();
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    cwidth = MediaQuery.of(context).size.width * 0.8;
    this.screenSizes = MediaQuery.of(context).size;
    List<Widget> drawerOptions = [];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(Container(
        child: ListTile(
          leading: new Icon(
            d.icon,
            color: AppColors.blackColor,
          ),
          title: new Text(
            d.title,
            style: TextStyle(color: AppColors.blackColor),
          ),
          onTap: () => _onSelectItem(i),
        ),
      ));
    }
    return Scaffold(
      drawer: Theme(
        data: new ThemeData(
          canvasColor: AppColors.whiteColor,
        ),
        child: new Drawer(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 250.0,
                child: DrawerHeader(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 10.0),
                      Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.greyColor,
                  ),
                ),
              ),
              Column(children: drawerOptions),
              Divider(color: AppColors.greyColor),
              // ListTile(
              //     title: Text(
              //   'by makymadi',
              // )),
            ],
          ),
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}
