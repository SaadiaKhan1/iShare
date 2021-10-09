import 'package:flutter/material.dart';
import 'package:ishare/ui/screens/bottomnavbarscreen.dart';
import 'package:ishare/ui/screens/register.dart';
import 'package:ishare/ui/screens/widgets/customrouter.dart';
import 'package:ishare/ui/screens/widgets/distancebutton.dart';
import 'package:ishare/ui/screens/widgets/textfield.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              Image.asset(
                'assets/images/mainlogo.png',
                fit: BoxFit.fill,
                height: height * 0.5,
              ),
              CustomTextfield(
                  icon: Icon(Icons.person),
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
              DistanceButton(
                width: width,
                height: height,
                text: "Login",
                isSelected: true,
                onPressed: () {
                  CustomRouter().push(BottomNavScreen(), context);
                },
              ),
              SizedBox(
                height: height * 0.01,
              ),
              DistanceButton(
                width: width,
                height: height,
                text: "Register",
                isSelected: true,
                onPressed: () {
                  CustomRouter().push(Register(), context);
                },
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Center(
                  child: Text(
                'OR',
                style: TextStyle(color: Colors.grey),
              )),
              SizedBox(
                height: height * 0.01,
              ),
              Center(
                  child: Text(
                'Sign in with social Media Account',
                style: TextStyle(color: Colors.grey),
              )),
              socialIconsRow(),
            ],
          ),
        ),
      ),
    );
  }
}
