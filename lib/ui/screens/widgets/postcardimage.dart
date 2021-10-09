import 'package:flutter/material.dart';

class PostCardImage extends StatelessWidget {
  double width, height;
  String text;
  String imageurl;
  PostCardImage(
      {required this.width,
      required this.height,
      required this.text,
      required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      child: Container(
        width: width,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(width * 0.03),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20,
                          child: ClipOval(
                            child: Image.network(
                              'https://modelsfashionpk.com/mfp-images/mfp_profile_thumb/Arslan-Idrees-Actor-Model-397.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Wali khan",
                              style: TextStyle(
                                  fontSize: width * 0.035,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            "posted about an hour ago",
                            style: TextStyle(
                                fontSize: width * 0.025, color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert_rounded),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(
                  bottom: width * 0.03,
                  left: width * 0.03,
                  right: width * 0.03),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  this.text,
                  style: TextStyle(fontSize: width * 0.034),
                ),
              ),
            ),
            Container(
              child: Image.asset(
                this.imageurl,
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
                width: width,
                height: height / 2,
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  bottom: width * 0.03,
                  left: width * 0.03,
                  right: width * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        iconSize: width * 0.060,
                        onPressed: () {},
                        icon: Icon(
                          Icons.thumb_up,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "5",
                        style: TextStyle(
                            fontSize: width * 0.035, color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        iconSize: width * 0.060,
                        onPressed: () {},
                        icon: Icon(
                          Icons.thumb_down,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "150",
                        style: TextStyle(
                            fontSize: width * 0.035, color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        iconSize: width * 0.060,
                        onPressed: () {},
                        icon: Icon(
                          Icons.comment,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "150",
                        style: TextStyle(
                            fontSize: width * 0.035, color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        iconSize: width * 0.060,
                        onPressed: () {},
                        icon: Icon(
                          Icons.share,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "150",
                        style: TextStyle(
                            fontSize: width * 0.035, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
