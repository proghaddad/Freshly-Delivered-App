import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginTextField extends StatelessWidget {
  LoginTextField(
      {Key? key,
      required this.controller,
      required this.obsecure,
      required this.icons})
      : super(key: key);
  TextEditingController controller;
  IconData icons;
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
            prefixIcon: Icon(icons,color: HexColor('#48742C'),),
            suffixIcon: Icon(Icons.remove_red_eye,color: HexColor('#48742C'),),
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
