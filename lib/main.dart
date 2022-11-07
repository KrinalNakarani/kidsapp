import 'package:flutter/material.dart';
import 'package:kidsapp/screen/homePage.dart';
import 'package:kidsapp/screen/secondPage.dart';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context)=>HomePage(),
        'page1':(context)=>SecondPage(),
      },
    ),
  );
}