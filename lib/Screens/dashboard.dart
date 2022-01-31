import 'package:flutter/material.dart';
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
            Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                    color: HexColor('#17682E').withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10)
                ),
                width: MediaQuery.of(context).size.width / 1,
                height: MediaQuery.of(context).size.height / 14,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search recipes, groceries and more',
                    hintStyle: TextStyle(fontSize: 15,color: Colors.white.withOpacity(0.8)),
                    prefixIcon: Icon(Icons.search,color: Colors.white.withOpacity(0.8),),
                    prefixIconConstraints: const BoxConstraints(
                      minWidth: 70
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)
                    ),
              ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
