import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DistanceButton extends StatelessWidget {
  double width;
  double height;
  String text;
  bool isSelected;
  dynamic onPressed;
  DistanceButton(
      {required this.width,
      required this.height,
      required this.text,
      required this.isSelected,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * 0.40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 5,
            primary: this.isSelected ? Color(0xFFCD5257) : Colors.white,
            shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: this.isSelected ? Color(0xFFCD5257) : Colors.white,
                ),
                borderRadius: BorderRadius.circular(20))),
        child: Center(
          child: Text(
            this.text,
            style: TextStyle(
                color: this.isSelected ? Colors.white : Colors.black,
                fontSize: width * 0.035,
                fontWeight: FontWeight.bold),
          ),
        ),
        onPressed: this.onPressed,
      ),
    );
  }
}
