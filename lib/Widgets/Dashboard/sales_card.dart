import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SalesCard extends StatelessWidget {
  const SalesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 9.3,
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [HexColor('#F58634'), HexColor('#17682E')]),
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
