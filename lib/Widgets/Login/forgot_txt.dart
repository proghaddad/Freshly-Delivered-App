import 'package:flutter/material.dart';

class ForgotText extends StatelessWidget {
  const ForgotText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Row(
        children: const [
          Text('Forgot password? ',style: TextStyle(fontWeight: FontWeight.w500),),
          Text('RECOVER',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
