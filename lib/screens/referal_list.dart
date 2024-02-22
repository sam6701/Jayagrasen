import 'package:flutter/material.dart';
import 'package:agrasen/colors/color_utils.dart';

class ReferalPage extends StatefulWidget {
  const ReferalPage({super.key});

  @override
  State<ReferalPage> createState() => _ReferalPageState();
}

class _ReferalPageState extends State<ReferalPage> {
  String _selectedItem = '1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: AppBar(
          backgroundColor: ColorUtils.white,
          title: Text(
            'Referal List',
            style: TextStyle(color: ColorUtils.darkbrownish, fontSize: 20),
          ),
          centerTitle: true,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: ColorUtils.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 18, right: 18, top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38),
                          // Add border color
                          borderRadius: BorderRadius.circular(
                              10), // Make the container circular
                        ),
                        height: 30,
                        width: MediaQuery.of(context).size.width * .70,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Dashboard",
                              hintStyle: TextStyle(
                                  color: ColorUtils.lightextGrey,
                                  fontFamily: 'IBM Plex Sans Devanagari',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                              fillColor: ColorUtils.white,
                              contentPadding: EdgeInsets.only(bottom: 20),
                              suffixIcon: Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.search,
                                    color: ColorUtils.lightextGrey,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              filled: true,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(12),
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0),
                      child: Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width * .15,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color:
                                  ColorUtils.lightextGrey), // Add border color
                          borderRadius: BorderRadius.circular(
                              10), // Make the container circular
                        ),
                        child: DropdownButton<String>(
                          value: _selectedItem,
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedItem = newValue!;
                            });
                          },
                          dropdownColor: ColorUtils.white,
                          underline: Container(),
                          elevation: 0,
                          items: <String>['1', '2', '3', '4']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                    color: ColorUtils.lightextGrey,
                                    fontFamily: 'IBM Plex Sans Devanagari',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.only(left: 18, right: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'S.No',
                          style: TextStyle(
                              color: ColorUtils.lightextGrey,
                              fontFamily: 'IBM Plex Sans Devanagari',
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Reffered Name',
                          style: TextStyle(
                              color: ColorUtils.lightextGrey,
                              fontFamily: 'IBM Plex Sans Devanagari',
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    Text(
                      'Amount',
                      style: TextStyle(
                          color: ColorUtils.lightextGrey,
                          fontFamily: 'IBM Plex Sans Devanagari',
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                //physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, voutIndex) {
                  return Padding(
                    padding: EdgeInsets.only(
                        left: 18, right: 10, bottom: 10, top: 18),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: ColorUtils.lightextGrey))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                '1',
                                style: TextStyle(
                                    color: ColorUtils.darktextGrey,
                                    fontFamily: 'IBM Plex Sans Devanagari',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16),
                              ),
                              SizedBox(
                                width: 45,
                              ),
                              Text(
                                'Harman',
                                style: TextStyle(
                                    color: ColorUtils.darktextGrey,
                                    fontFamily: 'IBM Plex Sans Devanagari',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                          //Text('1'),
                          //Text('Harman'),
                          Text(
                            '₹100',
                            style: TextStyle(
                                color: ColorUtils.darktextGrey,
                                fontFamily: 'IBM Plex Sans Devanagari',
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
