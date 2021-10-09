import 'package:flutter/material.dart';
import 'package:ishare/ui/screens/widgets/customtextfield.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  double width = 0;
  double height = 0;
  @override
  Widget build(BuildContext context) {
    this.width = MediaQuery.of(context).size.width;
    this.height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: Container(
        height: height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextfield1(
                controller: TextEditingController(),
                hinttext: 'Send Message',
                width: width / 1.5,
                height: height,
                obscuretext: false),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_circle_up_outlined),
              color: Colors.blue,
              iconSize: width * 0.1,
            )
          ],
        ),
      ),
    );
  }
}
