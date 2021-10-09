import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:ishare/ui/screens/filterscreen.dart';
import 'package:ishare/ui/screens/widgets/customrouter.dart';
import 'package:ishare/ui/screens/widgets/distancebutton.dart';
import 'package:ishare/ui/screens/widgets/postcardimage.dart';
import 'package:ishare/ui/screens/widgets/postcardtext.dart';
import 'package:ishare/ui/screens/widgets/textfield.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double width = 0;
  double height = 0;

  @override
  void initState() {
    super.initState();
    //initialize();
  }

  List<bool> iselectedlist = List<bool>.generate(4, (index) => false);
  List<String> distance = ['100 M', '500 M', '1 KM', '5 KM'];

  List<bool> iselectedlist1 = List<bool>.generate(4, (index) => false);
  List<String> sorting = [
    'Most Recent',
    'Most Liked',
    'Most Comments',
    'Most Popular'
  ];

//https://homepages.cae.wisc.edu/~ece533/images/mountain.png
  List<String> images = [
    'https://modelsfashionpk.com/mfp-images/mfp_profile_thumb/Arslan-Idrees-Actor-Model-397.jpg',
    'https://modelsfashionpk.com/mfp-images/mfp_profile_thumb/Arslan-Idrees-Actor-Model-397.jpg',
    'https://modelsfashionpk.com/mfp-images/mfp_profile_thumb/Arslan-Idrees-Actor-Model-397.jpg',
    'https://modelsfashionpk.com/mfp-images/mfp_profile_thumb/Arslan-Idrees-Actor-Model-397.jpg'
  ];

  GlobalKey<SliderMenuContainerState> _key1 =
      new GlobalKey<SliderMenuContainerState>();

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
        key: _key,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              //   _key1.currentState.;

              _key.currentState!.openDrawer();
            },
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(80.0),
            child: Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  height: height * 0.07,
                  width: width * 0.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 1,
                          color: Colors.black,
                          style: BorderStyle.solid)),
                  child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.search),
                        hintStyle: TextStyle(fontSize: width * 0.035),
                        hintText: 'Search here',
                        contentPadding: EdgeInsets.all(15),
                        border: InputBorder.none),
                    onChanged: (value) {},
                  ),
                ),
              ),
            ),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                CustomRouter().push(FilterScreen(), context);
              },
              icon: Icon(Icons.horizontal_split_rounded),
              color: Colors.black,
            ),
          ],
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Home",
              style: TextStyle(
                  fontSize: width * 0.08,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent[400]),
            ),
          ),
        ),
        drawer: Drawer(
            child: Container(
          child: ListView(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.all(const Radius.circular(50.0)),
                      child: CircleAvatar(
                        radius: width * 0.09,
                        child: Image.network(
                            'https://modelsfashionpk.com/mfp-images/mfp_profile_thumb/Arslan-Idrees-Actor-Model-397.jpg'),
                      ),
                    ),
                  ),
                  Text("User Name"),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.black,
                    height: 2,
                    thickness: 2,
                  ),
                ],
              ),
              Card(
                child: ListTile(
                  title: Text('Edit Profile'),
                  onTap: () {},
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Change password'),
                  onTap: () {},
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Privacy policy'),
                  onTap: () {},
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Settings'),
                  onTap: () {},
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Log Out'),
                  onTap: () async {},
                ),
              ),
            ],
          ),
        )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        height: height * 0.45,
                        child: Card(
                          elevation: 10,
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/mainlogo.png',
                                fit: BoxFit.fill,
                                height: height * 0.3,
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: width * 0.05),
                                child: Row(
                                  children: [
                                    Text(
                                      'Islamabad Charity ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: width * 0.04),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: width * 0.05),
                                child: Row(
                                  children: [
                                    Text(
                                      'Islamabad, Punjab, Pakistan',
                                      style: TextStyle(fontSize: width * 0.03),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      Positioned(
                        top: height * 0.02,
                        right: width * 0.04,
                        child: IconButton(
                            iconSize: width * 0.08,
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border)),
                      ),
                    ],
                  );
                },
              )
            ],
          ),
        ));

    // return Scaffold(
    //     body: SliderMenuContainer(
    //         trailing: IconButton(
    //             onPressed: () {
    //               CustomRouter().push(FilterScreen(), context);
    //             },
    //             icon: Icon(Icons.horizontal_split_rounded)),
    //         appBarHeight: height * 0.15,
    //         title: Padding(
    //           padding: const EdgeInsets.all(8.0),
    //           child: Text(
    //             "Home",
    //             style: TextStyle(
    //                 fontSize: width * 0.08,
    //                 fontWeight: FontWeight.bold,
    //                 color: Colors.blueAccent[400]),
    //           ),
    //         ),
    //         key: _key1,

    //         // hasAppBar: false,
    // sliderMain: SingleChildScrollView(
    //   child: Column(
    //     children: [
    //       ListView.builder(
    //         shrinkWrap: true,
    //         physics: ScrollPhysics(),
    //         itemCount: 2,
    //         itemBuilder: (context, index) {
    //           return Stack(
    //             children: [
    //               Container(
    //                 height: height * 0.45,
    //                 child: Card(
    //                   elevation: 10,
    //                   child: Column(
    //                     children: [
    //                       Image.asset(
    //                         'assets/images/mainlogo.png',
    //                         fit: BoxFit.fill,
    //                         height: height * 0.3,
    //                       ),
    //                       SizedBox(
    //                         height: height * 0.01,
    //                       ),
    //                       Padding(
    //                         padding:
    //                             EdgeInsets.only(left: width * 0.05),
    //                         child: Row(
    //                           children: [
    //                             Text(
    //                               'Islamabad Charity Organization',
    //                               style: TextStyle(
    //                                   fontWeight: FontWeight.bold,
    //                                   fontSize: width * 0.04),
    //                             ),
    //                           ],
    //                         ),
    //                       ),
    //                       SizedBox(
    //                         height: height * 0.01,
    //                       ),
    //                       Padding(
    //                         padding:
    //                             EdgeInsets.only(left: width * 0.05),
    //                         child: Row(
    //                           children: [
    //                             Text(
    //                               'Islamabad, Punjab, Pakistan',
    //                               style:
    //                                   TextStyle(fontSize: width * 0.03),
    //                             ),
    //                           ],
    //                         ),
    //                       )
    //                     ],
    //                   ),
    //                   shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(20.0),
    //                   ),
    //                 ),
    //               ),
    //               Positioned(
    //                 top: height * 0.02,
    //                 right: width * 0.04,
    //                 child: IconButton(
    //                     iconSize: width * 0.08,
    //                     onPressed: () {},
    //                     icon: Icon(Icons.favorite_border)),
    //               ),
    //             ],
    //           );
    //         },
    //       )
    //     ],
    //   ),
    // ),
    //         sliderMenu: Drawer(
    //           child: Container(
    //             child: ListView(
    //               children: [
    //                 Column(
    //                   children: [
    //                     Padding(
    //                       padding: const EdgeInsets.all(8.0),
    //                       child: ClipRRect(
    //                         borderRadius:
    //                             BorderRadius.all(const Radius.circular(50.0)),
    //                         child: CircleAvatar(
    //                           radius: width * 0.09,
    //                           child: Image.network(
    //                               'https://modelsfashionpk.com/mfp-images/mfp_profile_thumb/Arslan-Idrees-Actor-Model-397.jpg'),
    //                         ),
    //                       ),
    //                     ),
    //                     Text("User Name"),
    //                     SizedBox(
    //                       height: 10,
    //                     ),
    //                     Divider(
    //                       color: Colors.black,
    //                       height: 2,
    //                       thickness: 2,
    //                     ),
    //                   ],
    //                 ),
    //                 Card(
    //                   child: ListTile(
    //                     title: Text('Edit Profile'),
    //                     onTap: () {},
    //                   ),
    //                 ),
    //                 Card(
    //                   child: ListTile(
    //                     title: Text('Change password'),
    //                     onTap: () {},
    //                   ),
    //                 ),
    //                 Card(
    //                   child: ListTile(
    //                     title: Text('Privacy policy'),
    //                     onTap: () {},
    //                   ),
    //                 ),
    //                 Card(
    //                   child: ListTile(
    //                     title: Text('Settings'),
    //                     onTap: () {},
    //                   ),
    //                 ),
    //                 Card(
    //                   child: ListTile(
    //                     title: Text('Log Out'),
    //                     onTap: () async {},
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         )));
  }
}
