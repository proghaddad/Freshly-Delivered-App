import 'package:flutter/material.dart';
import 'package:freshly_delivered_app/Widgets/Dashboard/searchbar.dart';
import 'package:freshly_delivered_app/Widgets/Dashboard/carousel_slider.dart';
import 'package:hexcolor/hexcolor.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top : 50.0),
        child: Column(
          children: [
            SearchBar(),
            Sliderimages(),
          ],
        ),
      ),
    );
  }
}
