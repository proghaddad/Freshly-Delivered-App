import 'package:flutter/material.dart';
import 'package:freshly_delivered_app/Screens/register_screen.dart';

class AccountTXT extends StatelessWidget {
  const AccountTXT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top : 80.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Don\'t have an account?',style: TextStyle(fontWeight: FontWeight.w500),),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
            },
            child: Text('REGISTER',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
        ],
      ),
    );
  }
}
