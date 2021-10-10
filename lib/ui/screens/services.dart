import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ishare/ui/screens/bookings.dart';
import 'package:ishare/ui/screens/widgets/customrouter.dart';

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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: width,
              height: height * 0.1,
              child: ElevatedButton(
                onPressed: () {
                  CustomRouter().push(Booking(), context);
                },
                child: Text(
                  'Volunteering Services',
                  style: TextStyle(
                    fontSize: width * 0.050,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: width,
              height: height * 0.1,
              child: ElevatedButton(
                onPressed: () {
                  CustomRouter().push(Booking(), context);
                },
                child: Text(
                  'Funding Services',
                  style: TextStyle(
                    fontSize: width * 0.050,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: width,
              height: height * 0.1,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Your Services',
                  style: TextStyle(
                    fontSize: width * 0.050,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: width,
              height: height * 0.1,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Register For Help',
                  style: TextStyle(
                    fontSize: width * 0.050,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: width,
              height: height * 0.1,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Rate Services',
                  style: TextStyle(
                    fontSize: width * 0.050,
                    fontWeight: FontWeight.bold,
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
