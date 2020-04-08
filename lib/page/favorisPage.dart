import 'package:flutter/material.dart';
import 'package:flutter_catalogue/utils/colors.dart';

class FavorisPage extends StatefulWidget {
  @override
  _FavorisPageState createState() => _FavorisPageState();
}

class _FavorisPageState extends State<FavorisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.menu, color: AppColors.redColor),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            }),
        title: Text(
          'Favoris',
          style: TextStyle(
              fontFamily: 'Schyler', fontSize: 20.0, color: AppColors.redColor),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.notifications, color: AppColors.redColor),
              onPressed: () {}),
        ],
      ),
      body: Stack(children: <Widget>[
        Container(
            decoration: BoxDecoration(color: AppColors.greyColor),
            height: double.infinity,
            width: double.infinity)
      ]),
    );
  }
}
