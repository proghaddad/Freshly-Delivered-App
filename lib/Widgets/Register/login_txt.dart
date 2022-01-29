import 'package:flutter/material.dart';
import 'package:freshly_delivered_app/Screens/login_screen.dart';

class LoginTxt extends StatelessWidget {
  const LoginTxt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top : 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Already have an account?',style: TextStyle(fontWeight: FontWeight.w500),),
          TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Text('LOGIN HERE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
        ],
      ),
    );
  }
}
