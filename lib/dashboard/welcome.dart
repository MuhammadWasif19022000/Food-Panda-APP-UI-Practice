// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodpanda_ui/component/restraunt.dart';
import 'package:foodpanda_ui/consatnt/color.dart';
import 'package:foodpanda_ui/consatnt/consatant.dart';
import 'package:foodpanda_ui/dashboard/home.dart';
import 'package:foodpanda_ui/model/panda_pick_model/pandahelper.dart';
import 'package:foodpanda_ui/model/panda_pick_model/pandapick.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('New York City'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: CupertinoTextField(
                    // ignore: prefer_const_constructors
                    padding: EdgeInsets.symmetric(vertical: 13, horizontal: 10),
                    placeholder: 'Search for shops and resturnants',
                    prefix: Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Icon(
                        Icons.search,
                        color: Color(0xff7b7b7b),
                      ),
                    ),
                    style: TextStyle(
                      color: Color(0xff707070),
                      fontSize: 12,
                      fontFamily: Regular,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xfff7f7f7),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Icon(Icons.shopping_bag_outlined),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: MyColors.primaryColor,
              ),
              child: CircleAvatar(
                radius: 24,
                backgroundImage:
                    AssetImage('assets/Screenshot 2022-04-23 082316.png'),
              ),
            ),
            ListTile(
              title: Text(
                'Settings',
                style: TextStyle(
                  fontFamily: Medium,
                  color: Colors.black,
                ),
              ),
              leading: Icon(Icons.settings_outlined),
            ),
            ListTile(
              title: Text(
                'Help center 2',
                style: TextStyle(
                  fontFamily: Medium,
                  color: Colors.black,
                ),
              ),
              leading: Icon(Icons.help_outlined),
            ),
            ListTile(
              title: Text(
                'More',
                style: TextStyle(
                  fontFamily: Medium,
                  color: Colors.black,
                ),
              ),
              leading: Icon(Icons.more_horiz),
            ),
            ListTile(
              title: Text(
                'Sign up or Login up',
                style: TextStyle(
                  fontFamily: Medium,
                  color: Colors.black,
                ),
              ),
              leading: Icon(Icons.login_outlined),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Container(
                    height: height * .18,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: MyColors.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Image(
                          fit: BoxFit.fitWidth,
                          width: double.infinity,
                          image: NetworkImage(
                              'https://cdn.pixabay.com/photo/2021/01/16/09/05/meal-5921491_960_720.jpg'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                'Food delivery',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: Bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                'Order from your favourite\n resturnants and home chefs',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  height: 1,
                                  fontFamily: Medium,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: height * .25,
                        decoration: BoxDecoration(
                          color: Color(0xfffed271),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Stack(
                            alignment: Alignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              CircleAvatar(
                                radius: 50,
                                backgroundImage:
                                    AssetImage('assets/pandamart.jpg'),
                              ),
                              Positioned(
                                bottom: 15,
                                left: 0,
                                child: Text(
                                  'pandamart',
                                  style: TextStyle(
                                    color: blackColor,
                                    fontFamily: Bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                child: Text(
                                  'panda20 for 20 %of',
                                  style: TextStyle(
                                    color: blackColor,
                                    fontFamily: Medium,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: height * .15,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xffef9fc4),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/food.jpg'),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    'Pick-up',
                                    style: TextStyle(
                                      color: blackColor,
                                      fontFamily: Bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    'Upto 50% off',
                                    style: TextStyle(
                                      color: blackColor,
                                      fontWeight: FontWeight.w500,
                                      height: 1,
                                      fontFamily: Medium,
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: height * .1,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xff85bfff),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    'Shops',
                                    style: TextStyle(
                                      color: blackColor,
                                      fontFamily: Bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    'Everyday assentials',
                                    style: TextStyle(
                                      color: blackColor,
                                      fontWeight: FontWeight.w500,
                                      height: 1,
                                      fontFamily: Medium,
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Text(
                'Your daily deals',
                style: TextStyle(
                  color: blackColor,
                  fontSize: 15,
                  fontFamily: Bold,
                ),
              ),
              // ignore: avoid_unnecessary_containers, sized_box_for_whitespace
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: height * 278,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: PandaPickHelper.itemCount,
                      itemBuilder: (context, index) {
                        PandaPickItemModel model =
                            PandaPickHelper.getStatusItem(index);
                        return Resturant(
                          name: model.name,
                          image: model.image,
                          remainningTime: model.remaingTime,
                          subTitle: model.subTitle,
                          ratting: model.ratting,
                          totalRating: model.totalRating,
                          deliveryPrice: model.deliveryPrice,
                          deliveryTime: '',
                          remainingTime: '',
                          rating: '',
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
