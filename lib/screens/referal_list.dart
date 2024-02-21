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
      appBar: AppBar(
        title: Text(
          'Referal List',
          style: TextStyle(color: ColorUtils.darkbrownish, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38),
                      // Add border color
                      borderRadius: BorderRadius.circular(
                          10), // Make the container circular
                    ),
                    height: 30,
                    width: MediaQuery.of(context).size.width * .65,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Dashboard",
                          hintStyle: TextStyle(color: Colors.black38),
                          fillColor: ColorUtils.white,
                          contentPadding: EdgeInsets.only(bottom: 20),
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: IconButton(
                              icon: Icon(
                                Icons.search,
                                color: Colors.black38,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width * .25,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: Colors.black38), // Add border color
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
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'S.No',
                        style: TextStyle(color: Colors.black38),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Reffered Name',
                        style: TextStyle(color: Colors.black38),
                      ),
                    ],
                  ),
                  //Text('1'),
                  //Text('Harman'),
                  Text(
                    'Amount',
                    style: TextStyle(color: Colors.black38),
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
                  padding:
                      EdgeInsets.only(left: 15, right: 10, bottom: 10, top: 15),
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border(bottom: BorderSide())),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('1'),
                            SizedBox(
                              width: 45,
                            ),
                            Text('Harman'),
                          ],
                        ),
                        //Text('1'),
                        //Text('Harman'),
                        Text('₹100'),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
