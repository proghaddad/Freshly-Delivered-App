import 'package:flutter/material.dart';
import 'package:freshly_delivered_app/Widgets/Login/account_txt.dart';
import 'package:freshly_delivered_app/Widgets/Recover/recover_tf.dart';
import 'package:freshly_delivered_app/Widgets/Recover/reset_btn.dart';
import 'package:hexcolor/hexcolor.dart';

class RecoverAccScreen extends StatefulWidget {
  const RecoverAccScreen({Key? key}) : super(key: key);

  @override
  _RecoverAccScreenState createState() => _RecoverAccScreenState();
}

class _RecoverAccScreenState extends State<RecoverAccScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: HexColor('#25C573'),
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('lib/Assets/img/freshlogo.png',
                    height: size.height / 6.5),
                Padding(
                  padding: const EdgeInsets.only(top : 60.0),
                  child: Text(
                    'RECOVER ACCOUNT',
                    style: TextStyle(color: HexColor('#F58634'),fontSize: 25,fontWeight: FontWeight.w600),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 20.0),
                  child: Text(
                    'Enter the email address connected to your account and we will send you a link to reset your password',
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),
                  ),
                ),
                const RecoverTF(),
                const ResetBTN(),
                const AccountTXT(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
