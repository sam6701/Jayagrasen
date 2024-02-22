import 'package:flutter/material.dart';
import 'package:agrasen/colors/color_utils.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: AppBar(
          backgroundColor: ColorUtils.white,
          title: Text(
            'Profile',
            style: TextStyle(color: ColorUtils.darkbrownish, fontSize: 20),
          ),
          centerTitle: true,
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 32,
              ),
              child: Center(
                child: Container(
                  height: 94,
                  width: MediaQuery.of(context).size.width * 0.77,
                  child: Row(
                    children: [
                      Container(
                        height: 94,
                        width: 94,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(0),
                          image: DecorationImage(
                            image: AssetImage('assets/images/profile2.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Gautam Sharma",
                            style: TextStyle(
                                color: ColorUtils.dascolor,
                                fontSize: 20,
                                fontFamily: 'IBM Plex Sans Devanagari',
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "gautam@gmail.com",
                            style: TextStyle(
                                color: ColorUtils.lightGreygmail,
                                fontSize: 14,
                                fontFamily: 'IBM Plex Sans Devanagari',
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 52,
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: InkWell(
                onTap: () => {},
                child: Container(
                    decoration: BoxDecoration(
                        color: ColorUtils.white,
                        border: Border(
                            bottom:
                                BorderSide(color: ColorUtils.lightimgGrey))),
                    height: 48,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Donatar",
                            style: TextStyle(
                                color: ColorUtils.lightGreytext,
                                fontSize: 18,
                                fontFamily: 'IBM Plex Sans Devanagari',
                                fontWeight: FontWeight.w500),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: ColorUtils.lightGreytext,
                          ),
                        ],
                      ),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: InkWell(
                onTap: () => {},
                child: Container(
                    decoration: BoxDecoration(
                        color: ColorUtils.white,
                        border: Border(
                            bottom:
                                BorderSide(color: ColorUtils.lightimgGrey))),
                    height: 48,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Edit Details",
                            style: TextStyle(
                                color: ColorUtils.lightGreytext,
                                fontSize: 18,
                                fontFamily: 'IBM Plex Sans Devanagari',
                                fontWeight: FontWeight.w500),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: ColorUtils.lightGreytext,
                          ),
                        ],
                      ),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: InkWell(
                onTap: () => {},
                child: Container(
                    color: ColorUtils.white,
                    height: 48,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Change Password",
                            style: TextStyle(
                                color: ColorUtils.lightGreytext,
                                fontSize: 18,
                                fontFamily: 'IBM Plex Sans Devanagari',
                                fontWeight: FontWeight.w500),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: ColorUtils.lightGreytext,
                          ),
                        ],
                      ),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: InkWell(
                onTap: () => {},
                child: Container(
                    color: ColorUtils.white,
                    height: 48,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Logout",
                            style: TextStyle(
                                color: ColorUtils.lightGreytext,
                                fontSize: 18,
                                fontFamily: 'IBM Plex Sans Devanagari',
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
