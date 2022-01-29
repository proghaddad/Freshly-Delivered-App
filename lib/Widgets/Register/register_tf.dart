import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class RegisterTF extends StatelessWidget {
  RegisterTF({Key? key, required this.controller, required this.obsecure,required this.hint})
      : super(key: key);

  TextEditingController controller;
  bool obsecure;
  String hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: SizedBox(
        height: MediaQuery
            .of(context)
            .size
            .height / 13,
        child: TextFormField(
          style: TextStyle(color: HexColor('#17682E')),
          maxLines: 1,
          controller: controller,
          obscureText: obsecure,
          //validator: ,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: HexColor('#00000').withOpacity(0.5)),
            // For Background Color
            filled: true,
            fillColor: Colors.white,
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