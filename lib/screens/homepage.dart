import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:agrasen/colors/color_utils.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: AppBar(
          backgroundColor: ColorUtils.lightcream,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FittedBox(
                child: Image.asset(
                  'assets/images/front_logo.png',
                  width: 100,
                  height: 90,
                ),
                fit: BoxFit.fill,
              ),
              CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/profile.png',
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: [ColorUtils.lightcream, ColorUtils.white])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Dashboard',
                style: TextStyle(color: ColorUtils.darkbrownish, fontSize: 30),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Expanded(
                      flex: 6, // 60% of the height
                      child: Container(
                          color: ColorUtils.lightbrownishpink,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Total Donation',
                                    style: TextStyle(
                                        color: ColorUtils.darkbrownish,
                                        fontSize: 12),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '₹10,00,000',
                                    style: TextStyle(
                                        color: ColorUtils.darkbrownish,
                                        fontSize: 35,
                                        decoration: TextDecoration.underline,
                                        decorationColor:
                                            ColorUtils.darkbrownish),
                                  )
                                ],
                              )
                            ],
                          )),
                    ),
                    Expanded(
                      flex: 4, // 40% of the height
                      child: Row(
                        children: [
                          Expanded(
                            flex: 30, // 50% of the width
                            child: Container(
                              color: ColorUtils.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Total Referal",
                                    style: TextStyle(
                                        color: ColorUtils.black, fontSize: 12),
                                  ),
                                  Text(
                                    "480",
                                    style: TextStyle(
                                        color: ColorUtils.black, fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1, // 50% of the width
                            child: Container(
                              color: ColorUtils.lightbrownishpink,
                            ),
                          ),
                          Expanded(
                            flex: 30, // 50% of the width
                            child: Container(
                              color: ColorUtils.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Total Donar",
                                    style: TextStyle(
                                        color: ColorUtils.black, fontSize: 12),
                                  ),
                                  Text(
                                    "214",
                                    style: TextStyle(
                                        color: ColorUtils.black, fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            /*Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              //color: ColorUtils.darkbrownish2,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  ColorUtils.darkbrownish2
                      .withOpacity(0.65), // Adjust opacity and color as needed
                  BlendMode
                      .multiply, // Blend mode for applying color on top of the image
                ),
              ),
            ),
          ),*/
            Padding(
              padding: EdgeInsets.all(15),
              child: Stack(
                children: [
                  ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      ColorUtils.darkbrownish2.withOpacity(
                          0.65), // Adjust opacity and color as needed
                      BlendMode
                          .multiply, // Blend mode for applying color on top of the image
                    ),
                    child: Container(
                      //color: ColorUtils.darkbrownish2.withOpacity(0.65),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/images/background.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  //child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Membership Card",
                            style: TextStyle(
                                color: ColorUtils.white, fontSize: 20),
                          ),
                          FittedBox(
                            child: Image.asset(
                              'assets/images/front_logo.png',
                              width: 100,
                              height: 90,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Membership ID",
                            style: TextStyle(
                                color: ColorUtils.white, fontSize: 12),
                          ),
                          Text(
                            "123456787210",
                            style: TextStyle(
                                color: ColorUtils.white, fontSize: 20),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Alok Agrawal",
                            style: TextStyle(
                                color: ColorUtils.white, fontSize: 12),
                          ),
                          Text(
                            "valid till:25/06/26",
                            style: TextStyle(
                                color: ColorUtils.white, fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ) // Adjust as necessary
                  //),
                  //),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
