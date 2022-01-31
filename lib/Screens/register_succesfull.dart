import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class RegisterSuccesful extends StatelessWidget {
  const RegisterSuccesful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#25C573'),
      body: Center(
        child: Padding(
          padding:  const EdgeInsets.only(top : 100.0),
          child: Column(
            children: [
              const Text('SUCCESS',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.only(top : 20.0),
                child: Image.asset('lib/Assets/img/checkicon.png'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.0,vertical: 50.0),
                child: Text('Account created successfully. Please wait while we log you into your account.',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
