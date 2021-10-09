import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  double width = 0, height = 0;

  @override
  Widget build(BuildContext context) {
    this.width = MediaQuery.of(context).size.width;

    this.height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              width: width / 2,
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text(
                        'Volunteering Services',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.045),
                      ),
                      Icon(
                        Icons.volunteer_activism_rounded,
                        size: width * 0.1,
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
