import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginTextField extends StatelessWidget {
  LoginTextField(
      {Key? key,
      required this.controller,
      required this.obsecure,
      required this.preficon,
      required this.sufficon})
      : super(key: key);
  TextEditingController controller;
  IconData preficon;
  Icon sufficon;
  bool obsecure;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 13,
        child: TextFormField(
          style: TextStyle(color: HexColor('#17682E')),
          maxLines: 1,
          controller: controller,
          obscureText: obsecure,
          //validator: ,
          decoration: InputDecoration(
            // For Background Color
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Icon(preficon,color: HexColor('#48742C'),),
            suffixIcon: sufficon,
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
