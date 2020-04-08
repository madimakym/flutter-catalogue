import 'package:flutter/material.dart';
import 'package:flutter_catalogue/utils/colors.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
          'Notification',
          style: TextStyle(
              fontFamily: 'Schyler', fontSize: 20.0, color: AppColors.redColor),
        )
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
