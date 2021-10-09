import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextfield1 extends StatelessWidget {
  double width = 0, height = 0;

  TextEditingController controller = new TextEditingController();
  String hinttext;
  bool obscuretext;
  dynamic initialValue;
  dynamic onchanged;
  CustomTextfield1(
      {required this.controller,
      required this.hinttext,
      required this.width,
      required this.height,
      required this.obscuretext,
      this.onchanged});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: width * 0.05),
      child: Container(
        width: width * 0.9,
        height: height * 0.07,
        child: TextFormField(
          onChanged: this.onchanged,
          obscureText: this.obscuretext,
          controller: controller,
          decoration: InputDecoration(
              isDense: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(color: Colors.grey)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              filled: true,
              hintStyle: TextStyle(color: Colors.grey),
              hintText: this.hinttext,
              fillColor: Colors.transparent),
        ),
      ),
    );
  }
}
