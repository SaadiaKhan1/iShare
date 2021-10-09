import 'package:flutter/material.dart';
import 'package:ishare/ui/screens/widgets/customtextfield.dart';
import 'package:ishare/ui/screens/widgets/distancebutton.dart';
import 'package:ishare/ui/screens/widgets/headingtextfieldtext.dart';
import 'package:ishare/ui/screens/widgets/textfield.dart';

class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  double width = 0;
  double height = 0;
  @override
  Widget build(BuildContext context) {
    this.width = MediaQuery.of(context).size.width;
    this.height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.08,
            ),
            Row(
              children: [
                HeadingText(
                    text: "Name",
                    width: width,
                    height: height,
                    fontSize: width * 0.045),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            CustomTextfield1(
                controller: TextEditingController(),
                hinttext: "Enter Your Name",
                width: width,
                height: height,
                obscuretext: false),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                HeadingText(
                    text: "Address",
                    width: width,
                    height: height,
                    fontSize: width * 0.045),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            CustomTextfield1(
                controller: TextEditingController(),
                hinttext: "Enter Your Address",
                width: width,
                height: height,
                obscuretext: false),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                HeadingText(
                    text: "PostCode",
                    width: width,
                    height: height,
                    fontSize: width * 0.045),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            CustomTextfield1(
                controller: TextEditingController(),
                hinttext: "Enter Your Postcode",
                width: width,
                height: height,
                obscuretext: false),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                HeadingText(
                    text: "Email",
                    width: width,
                    height: height,
                    fontSize: width * 0.045),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            CustomTextfield1(
                controller: TextEditingController(),
                hinttext: "Enter Your Email",
                width: width,
                height: height,
                obscuretext: false),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                HeadingText(
                    text: "Landline Tel",
                    width: width,
                    height: height,
                    fontSize: width * 0.045),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            CustomTextfield1(
                controller: TextEditingController(),
                hinttext: "Enter Your Landline Tel",
                width: width,
                height: height,
                obscuretext: false),
            SizedBox(
              height: height * 0.01,
            ),
            DistanceButton(
              width: width,
              height: height,
              text: 'Submit',
              isSelected: false,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
