import 'package:flutter/material.dart';
import 'package:freshly_delivered_app/Screens/recover_screen.dart';

class ForgotText extends StatelessWidget {
  const ForgotText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Row(
        children: [
          const Text('Forgot password?',style: TextStyle(fontWeight: FontWeight.w500),),
          TextButton(
            child : const Text('RECOVER',
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => RecoverAccScreen()));
            },
          ),
        ],
      ),
    );
  }
}
