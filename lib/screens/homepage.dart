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
          backgroundColor: ColorUtils.lightcream.withOpacity(0.8),
          title: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FittedBox(
                  child: Image.asset(
                    'assets/images/front_logo.png',
                    width: 122,
                    height: 44,
                  ),
                  fit: BoxFit.fill,
                ),
                const CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage(
                    'assets/images/profile.png',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
                colors: [
              ColorUtils.lightcream.withOpacity(0.8),
              ColorUtils.white
            ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Dashboard',
                style: TextStyle(
                    color: ColorUtils.dascolor,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'IBM Plex Sans Devanagari'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(18),
                ),
                height: MediaQuery.of(context).size.height * (211 / 752),
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
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
                                Padding(
                                  padding: EdgeInsets.only(left: 20, top: 18),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Total Donation',
                                        style: TextStyle(
                                            color: ColorUtils.primary,
                                            fontSize: 14,
                                            fontFamily:
                                                'IBM Plex Sans Devanagari',
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 18),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '₹10,00,000',
                                        style: TextStyle(
                                            color: ColorUtils.darkbrownish,
                                            fontSize: 36,
                                            fontFamily:
                                                'IBM Plex Sans Devanagari',
                                            fontWeight: FontWeight.w600,
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor:
                                                ColorUtils.darkbrownish),
                                      )
                                    ],
                                  ),
                                ),
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
                                    Padding(
                                      padding: EdgeInsets.only(top: 6),
                                      child: Text(
                                        "Total Referal",
                                        style: TextStyle(
                                            color: ColorUtils.trefcolor,
                                            fontSize: 14,
                                            fontFamily:
                                                'IBM Plex Sans Devanagari',
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 4),
                                      child: Text(
                                        "480",
                                        style: TextStyle(
                                            color: ColorUtils.nocolor,
                                            fontSize: 24,
                                            fontFamily:
                                                'IBM Plex Sans Devanagari',
                                            fontWeight: FontWeight.w600),
                                      ),
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
                                    Padding(
                                      padding: EdgeInsets.only(top: 6),
                                      child: Text(
                                        "Total Donatar",
                                        style: TextStyle(
                                            color: ColorUtils.trefcolor,
                                            fontSize: 14,
                                            fontFamily:
                                                'IBM Plex Sans Devanagari',
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 4),
                                      child: Text(
                                        "214",
                                        style: TextStyle(
                                            color: ColorUtils.nocolor,
                                            fontSize: 24,
                                            fontFamily:
                                                'IBM Plex Sans Devanagari',
                                            fontWeight: FontWeight.w600),
                                      ),
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
            ),
            Padding(
              padding: EdgeInsets.all(18),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: ColorFiltered(
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
                          borderRadius: BorderRadius.circular(18),
                          image: DecorationImage(
                            image: AssetImage('assets/images/background.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        height:
                            MediaQuery.of(context).size.height * (211 / 752),
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                  ),
                  //child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 12, left: 12, right: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Membership Card",
                              style: TextStyle(
                                  color: ColorUtils.white,
                                  fontSize: 24,
                                  fontFamily: 'Sahitya',
                                  fontWeight: FontWeight.w700),
                            ),
                            FittedBox(
                              child: Image.asset(
                                'assets/images/front_logo.png',
                                width: 101,
                                height: 33,
                              ),
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 35),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Membership ID",
                              style: TextStyle(
                                  color: ColorUtils.white,
                                  fontSize: 12,
                                  fontFamily: 'IBM Plex Sans Devanagari',
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "123456787210",
                              style: TextStyle(
                                  color: ColorUtils.white,
                                  fontSize: 28,
                                  fontFamily: 'IBM Plex Sans Devanagari',
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 22, left: 12, right: 12),
                        child: Row(
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
