import 'package:flutter/material.dart';
import 'package:ishare/ui/screens/widgets/distancebutton.dart';
import 'package:ishare/ui/screens/widgets/textfield.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  double width = 0;
  double height = 0;
  Widget socialIconsRow() {
    return GestureDetector(
      onTap: () async {
        FocusScope.of(context).unfocus();
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Container(
        margin: EdgeInsets.only(top: height / 60.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CircleAvatar(
              radius: width * 0.05,
              backgroundImage: AssetImage("assets/images/googlelogo.png"),
            ),
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              radius: width * 0.04,
              backgroundImage: AssetImage("assets/images/fblogo.jpg"),
            ),
          ],
        ),
      ),
    );
  }

  var checkBoxValue = false;
  Widget acceptTermsTextRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Checkbox(
                activeColor: Color(0xFF1B1B1B),
                value: checkBoxValue,
                onChanged: (newValue) {
                  setState(() {
                    checkBoxValue = newValue!;
                  });
                }),
            Text(
              "I agree with terms of services.Terms of Payment and Privacy Policy",
              maxLines: 2,
              style: TextStyle(
                color: Color(0xD34D4E52),
                // fontWeight: FontWeight.w200,
                fontSize: 10.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    this.height = MediaQuery.of(context).size.height;
    this.width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.1,
              ),
              Text(
                'REGISTER',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: width * 0.08),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              CustomTextfield(
                  icon: Icon(Icons.person),
                  hint: "Name",
                  controller: TextEditingController(),
                  obscure: false,
                  width: width,
                  height: height),
              SizedBox(
                height: height * 0.01,
              ),
              CustomTextfield(
                  icon: Icon(Icons.email),
                  hint: "Email",
                  controller: TextEditingController(),
                  obscure: false,
                  width: width,
                  height: height),
              SizedBox(
                height: height * 0.01,
              ),
              CustomTextfield(
                  icon: Icon(Icons.lock),
                  hint: "Password",
                  controller: TextEditingController(),
                  obscure: true,
                  width: width,
                  height: height),
              SizedBox(
                height: height * 0.01,
              ),
              CustomTextfield(
                  icon: Icon(Icons.lock),
                  hint: "Confirm Password",
                  controller: TextEditingController(),
                  obscure: true,
                  width: width,
                  height: height),
              SizedBox(
                height: height * 0.01,
              ),
              acceptTermsTextRow(),
              DistanceButton(
                width: width,
                height: height,
                text: "Register",
                isSelected: true,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
