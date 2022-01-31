import 'package:flutter/material.dart';
import 'package:freshly_delivered_app/Screens/dashboard.dart';
import 'package:freshly_delivered_app/Screens/homescreen.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginBTN extends StatelessWidget {
  const LoginBTN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top : 25.0),
      child: SizedBox(
        width: size.width / 1.1,
        height: size.height / 13.5,
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
            child: const Text('LOGIN',
              style: TextStyle(),
              ),
            style : ElevatedButton.styleFrom(
                primary: HexColor('#17682E'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
            )
            ),
        ),
      ),
    );
  }
}
