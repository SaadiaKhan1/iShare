import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class HeadingText extends StatelessWidget {
  double width = 0, height = 0;
  double fontSize = 0;
  String text = '';
  HeadingText(
      {required this.text,
      required this.width,
      required this.height,
      required this.fontSize});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: width * 0.09),
      child: Text(
        this.text,
        style: TextStyle(fontSize: this.fontSize, fontWeight: FontWeight.bold),
      ),
    );
  }
}
