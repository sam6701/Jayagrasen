import 'package:agrasen/hover_page.dart';
import 'package:flutter/material.dart';
import 'package:agrasen/screens/homepage.dart';
import 'package:agrasen/screens/referal_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HoverPage(valu: 0), //ReferalPage() //Homepage(),
    );
  }
}
