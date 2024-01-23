// ignore_for_file: prefer_const_constructors

import 'package:demofirst/pages/first_page.dart';
import 'package:demofirst/pages/home_page.dart';
import 'package:demofirst/pages/setting_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());

  }
  
  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstPage(),
        routes: {
          '/homepage':(context)=> HomePage(),
          '/settingpage' : (context) => SettingPage(),

        },
      );
    }
  }
  


