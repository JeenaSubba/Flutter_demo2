// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:demofirst/pages/home_page.dart';
import 'package:demofirst/pages/profile_page.dart';
import 'package:demofirst/pages/setting_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
   FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
   //this keeps tract of the selected index
   int _selectedIndex = 0;

   //this method updates the selected index
   void _navigateBottomBar(int index){
      setState(() {
        _selectedIndex = index;
      });
   }

  final List _pages = [
    //home page
    HomePage(),

    //profile page
    ProfilePage(),

    //settings page
    SettingPage(),

  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("First page")),

      body: _pages[_selectedIndex],

      // drawer: Drawer(
      //   backgroundColor: Colors.deepPurple[100],
      //    child: Column(
      //      children: [
      //        DrawerHeader(child: Icon(
      //            Icons.favorite,
      //          size: 48,
      //        )),
      //
      //        //home page list tile
      //
      //        ListTile(
      //          leading: Icon(Icons.home),
      //          title: Text("HOME"),
      //          onTap: (){
      //            //pop drawer first
      //            Navigator.pop(context);
      //
      //            //go to home page
      //            Navigator.pushNamed(context, '/homepage');
      //          },
      //        ),
      //
      //        ListTile(
      //          leading: Icon(Icons.settings),
      //          title: Text("SETTINGS"),
      //          onTap: (){
      //            Navigator.pushNamed(context, '/settingpage');
      //          },
      //        ),
      //
      //      ],
      //    ),
      // ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          //home
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: 'Home',
          ),

          //profile
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
            label: 'Profile'

          ),

          //settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings'
          )
        ],
      ),

    );
  }
}
