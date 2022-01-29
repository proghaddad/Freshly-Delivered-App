import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class RecoverTF extends StatefulWidget {
  const RecoverTF({Key? key}) : super(key: key);

  @override
  _RecoverTFState createState() => _RecoverTFState();
}

class _RecoverTFState extends State<RecoverTF> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 13,
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: HexColor('#17682E')),
          maxLines: 1,
          //validator: ,
          decoration: InputDecoration(
            // Error border
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.red,
              ),
              borderRadius: BorderRadius.circular(20)
            ),
            hintStyle: TextStyle(),
            hintText: 'johndoe@example.com',
            // For Background Color
            filled: true,
            fillColor: Colors.white,
            // Default Border
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
    );
  }
}
