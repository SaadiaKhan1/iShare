import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  double width = 0, height = 0;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    width: width * 1,
                    height: height * 0.25,
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                        image: AssetImage('assets/images/splash.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    width: width * 0.95,
                    height: height * 0.75,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: height * 0.07, left: width * 0.02),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'ADDRESS',
                                        style: TextStyle(
                                            fontSize: height * 0.03,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Container(
                                        width: width * 0.76,
                                        child: Text(
                                          'ECT NY A12',
                                          style: TextStyle(
                                              fontSize: height * 0.02,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.map_sharp),
                                      iconSize: width * 0.1,
                                    ),
                                    Text(
                                      'Direction',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'EMAIL',
                                        style: TextStyle(
                                            fontSize: height * 0.03,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Container(
                                        width: width * 0.74,
                                        child: Text(
                                          'spktech.pk@gmail.com',
                                          style: TextStyle(
                                              fontSize: height * 0.02,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.email_outlined),
                                      iconSize: width * 0.1,
                                    ),
                                    Text(
                                      'Send Email',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            Text(
                              'ABOUT US',
                              style: TextStyle(
                                  fontSize: height * 0.03,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Container(
                              width: width * 0.94,
                              child: Text(
                                'The place which brings people and resources together to solve problems and create opportunities for community development iShare helps you raise your profile as a significant memeber of your community by contributing your voluntary time or financial and material resources.',
                                style: TextStyle(
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
                top: height * 0.17,
                left: width * 0.05,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: height * 0.12,
                      width: width * 0.25,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: AssetImage('assets/images/splash.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.5,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: width * 0.06,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: Icon(Icons.share),
                        iconSize: width * 0.08,
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ],
                )),
            // Positioned(
            //     top: height * 0.17,
            //     left: width * 0.35,
            //     child: Text(
            //       'ISHARE',
            //       style: TextStyle(
            //           fontSize: 30,
            //           fontWeight: FontWeight.bold,
            //           color: Colors.black),
            //     )),
          ],
        ),
      ),
    );
  }
}
