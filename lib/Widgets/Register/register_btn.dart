import 'package:flutter/material.dart';
import 'package:freshly_delivered_app/Screens/register_succesfull.dart';
import 'package:hexcolor/hexcolor.dart';

class RegisterBTN extends StatelessWidget {
  const RegisterBTN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top : 15.0),
      child: SizedBox(
        width: size.width / 1.1,
        height: size.height / 13.5,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterSuccesful()));
          },
          child: const Text('REGISTER',
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
