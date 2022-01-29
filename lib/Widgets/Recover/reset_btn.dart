import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ResetBTN extends StatelessWidget {
  const ResetBTN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top : 10.0),
      child: SizedBox(
        width: size.width / 1.1,
        height: size.height / 13,
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('RESET MY ACCOUNT',
            style: TextStyle(),
          ),
          style : ElevatedButton.styleFrom(
              primary: HexColor('#000000'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )
          ),
        ),
      ),
    );
  }
}
