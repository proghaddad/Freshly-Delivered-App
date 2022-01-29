import 'package:flutter/material.dart';

class AccountTXT extends StatelessWidget {
  const AccountTXT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top : 120.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Don\'t have an account?   ',style: TextStyle(fontWeight: FontWeight.w500),),
          Text('REGISTER',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
