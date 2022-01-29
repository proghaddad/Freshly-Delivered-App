import 'package:flutter/material.dart';
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
        padding: const EdgeInsets.only( top : 60.0),
        child: Center(
          child: Column(
            children: [
              Image.asset('lib/Assets/img/freshlogo.png',
                  height: size.height / 6.5),
              RecoverTF(),
              ResetBTN(),
            ],
          ),
        ),
      ),
    );
  }
}
