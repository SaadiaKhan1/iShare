import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ishare/ui/screens/widgets/headingtextfieldtext.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List listPromotions = [
    'https://edhi.org/wp-content/uploads/2017/11/logo.png',
    'https://alkhidmat.org/wp-content/uploads/2021/02/Alkhidmat-Foundation-Pakistan.png'
  ];

  Widget promotionWidget() {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 1.0,
        autoPlayInterval: Duration(seconds: 3),
        autoPlay: true,
        height: MediaQuery.of(context).size.height * 0.26,
      ),
      items: listPromotions.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                child: GestureDetector(
                    onTap: () {},
                    child: CachedNetworkImage(
                      placeholder: (context, url) => Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Center(
                          child: Container(
                              height: 100,
                              width: 100,
                              child: CircularProgressIndicator()),
                        ),
                      ),
                      imageUrl: i,
                      fit: BoxFit.fill,
                    )));
          },
        );
      }).toList(),
    );
  }

  double width = 0, height = 0;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text('Detail'),
      ),
      body: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),
              child: promotionWidget()),
          Align(
            alignment: Alignment.centerLeft,
            child: HeadingText(
                text: 'Charity Name',
                width: width,
                height: height,
                fontSize: width * 0.055),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: HeadingText(
                text: 'iShare',
                width: width,
                height: height,
                fontSize: width * 0.050),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: HeadingText(
                text: 'Description',
                width: width,
                height: height,
                fontSize: width * 0.055),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: HeadingText(
                text:
                    'The place which brings people and resources together to solve problems and create opportunities for community development iShare helps you raise your profile as a significant memeber of your community by contributing your voluntary time or financial and material resources.',
                width: width,
                height: height,
                fontSize: width * 0.050),
          )
        ],
      ),
    );
  }
}
