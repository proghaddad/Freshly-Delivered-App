import 'package:flutter/material.dart';
import 'package:freshly_delivered_app/Widgets/Register/login_txt.dart';
import 'package:freshly_delivered_app/Widgets/Register/register_btn.dart';
import 'package:freshly_delivered_app/Widgets/Register/register_tf.dart';
import 'package:hexcolor/hexcolor.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}
final emailcont = TextEditingController();
final namecont = TextEditingController();
final numbcont = TextEditingController();
final passcont = TextEditingController();
final passtocont = TextEditingController();

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#25C573'),
      body: Padding(
        padding: const EdgeInsets.only(top : 40.0),
        child: Column(
          children: [
            const Text('REGİSTER',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
            Padding(
              padding: const EdgeInsets.only(top : 10.0),
              child: RegisterTF(controller: emailcont, obsecure: false,hint: 'johndoe@example.com',),
            ),
            RegisterTF(controller: namecont, obsecure: false,hint: 'John Doe',),
            RegisterTF(controller: numbcont, obsecure: false, hint: '+254 703 396 2668',),
            RegisterTF(controller: passcont, obsecure: true, hint: 'choose a password',),
            RegisterTF(controller: passtocont, obsecure: true, hint: 'confirm password',),
            const RegisterBTN(),
            const Padding(
              padding: EdgeInsets.only(top : 10.0,left: 30,right: 30),
              child: Text('By creating an account, you agree to be bound by our Terms of Service and Privacy Policy',style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            LoginTxt(),
          ],
        ),
      ),
    );
  }
}
