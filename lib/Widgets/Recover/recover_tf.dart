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
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 1.1,
        height: MediaQuery.of(context).size.height / 13,
        // Textformfield
        child: TextFormField(
          textAlign: TextAlign.center,
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
              borderRadius: BorderRadius.circular(10)
            ),
            hintStyle: TextStyle(color: HexColor('#000000').withOpacity(0.5)),
            hintText: 'johndoe@example.com',
            // For Background Color
            filled: true,
            fillColor: Colors.white,
            // Default Border
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
