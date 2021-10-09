import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ishare/ui/screens/widgets/distancebutton.dart';

class FilterScreen extends StatefulWidget {
  FilterScreen({Key? key}) : super(key: key);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  List<bool> iselectedlist = List<bool>.generate(4, (index) => false);
  List<String> distance = ['100 M', '500 M', '1 KM', '5 KM'];

  List<bool> iselectedlist1 = List<bool>.generate(4, (index) => false);
  List<String> sorting = [
    'Most Recent',
    'Most Liked',
    'Most Comments',
    'Most Popular'
  ];
  double width = 0;
  double height = 0;
  @override
  Widget build(BuildContext context) {
    this.width = MediaQuery.of(context).size.width;
    this.height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: height * 0.05,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Select Radius',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: width * 0.05),
              ),
            ),
          ),
          Wrap(
            spacing: 5,
            children: [
              for (int i = 0; i < 4; i++)
                DistanceButton(
                    onPressed: () {
                      for (int index = 0;
                          index < iselectedlist.length;
                          index++) {
                        iselectedlist[index] = false;
                      }
                      iselectedlist[i] = !iselectedlist[i];

                      setState(() {});
                    },
                    width: width,
                    height: height,
                    text: distance[i],
                    isSelected: iselectedlist[i]),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Sort by',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: width * 0.05),
              ),
            ),
          ),
          Wrap(
            spacing: 5,
            children: [
              for (int i = 0; i < 4; i++)
                DistanceButton(
                    onPressed: () {
                      for (int index = 0;
                          index < iselectedlist1.length;
                          index++) {
                        iselectedlist1[index] = false;
                      }
                      iselectedlist1[i] = !iselectedlist1[i];

                      setState(() {});
                    },
                    width: width,
                    height: height,
                    text: sorting[i],
                    isSelected: iselectedlist1[i]),
            ],
          ),
        ],
      ),
    );
  }
}
