import 'package:flutter/material.dart';
import 'package:flutter_catalogue/utils/colors.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Detail', style: TextStyle(color: AppColors.redColor) ),
        ),
    );
  }
}