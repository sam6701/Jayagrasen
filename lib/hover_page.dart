import 'package:flutter/material.dart';
import 'package:agrasen/screens/homepage.dart';
import 'package:agrasen/screens/referal_list.dart';
import 'package:agrasen/colors/color_utils.dart';

class HoverPage extends StatefulWidget {
  final int valu;
  HoverPage({
    required this.valu,
  });
  @override
  State<HoverPage> createState() => _HoverPageState();
}

class _HoverPageState extends State<HoverPage> {
  final List<Widget> _pages = [
    Homepage(),
    ReferalPage(),
  ];
  late int selectpageindex = widget.valu;
  void selectpage(int index) {
    setState(() {
      selectpageindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[selectpageindex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        onTap: selectpage,
        unselectedItemColor: Colors.black54,
        selectedItemColor: ColorUtils.darkbrownish,
        currentIndex: selectpageindex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.compare_arrows,
              ),
              label: 'refer'),
        ],
      ),
    );
  }
}
