import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  Icon icon;
  String hint;
  TextEditingController controller;
  bool obscure;

  double width;
  double height;

  CustomTextfield(
      {required this.icon,
      required this.hint,
      required this.controller,
      required this.obscure,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Container(
          height: height * 0.07,
          width: width * 0.7,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                  width: 1, color: Colors.black, style: BorderStyle.solid)),
          child: TextField(
            obscureText: obscure,
            decoration: InputDecoration(
                suffixIcon: icon,
                hintStyle: TextStyle(fontSize: width * 0.035),
                hintText: this.hint,
                contentPadding: EdgeInsets.all(15),
                border: InputBorder.none),
            onChanged: (value) {},
          ),
        ),
      ),
    );
  }
}
