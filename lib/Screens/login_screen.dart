import 'package:flutter/material.dart';
import 'package:freshly_delivered_app/Widgets/Login/account_txt.dart';
import 'package:freshly_delivered_app/Widgets/Login/forgot_txt.dart';
import 'package:freshly_delivered_app/Widgets/Login/login_btn.dart';
import 'package:freshly_delivered_app/Widgets/Login/login_tf.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}
final nameController = TextEditingController();
final passController = TextEditingController();
class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width / 1,
        height: size.height / 1,
        color: HexColor('#25C573'),
        child: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('lib/Assets/img/freshlogo.png',
                    height: size.height / 6.5),
                const Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
                LoginTextField(
                  obsecure: false,
                  controller: nameController,
                  preficon: Icons.email,
                  sufficon: Icon(Icons.remove_red_eye,color: HexColor('#fff'),),
          ),
                LoginTextField(
                  obsecure: true,
                  controller: passController,
                  preficon: Icons.lock,
                  sufficon: Icon(Icons.remove_red_eye,color: HexColor('#48742C'),),
                ),
                ForgotText(),
                LoginBTN(),
                AccountTXT(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
