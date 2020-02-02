import 'package:flutter/material.dart';
import 'package:flutter_douban/pages/groups/GroupsPage.dart';
import 'package:flutter_douban/pages/market/MarketPage.dart';
import 'package:flutter_douban/pages/profile/ProfilePage.dart';
import 'package:flutter_douban/pages/subjects/SubjectsPage.dart';
import 'package:flutter_douban/widgets/TabBarItem.dart';

import 'pages/home/HomePage.dart';
//http://douban.uieee.com/v2/movie/top250?start=0&count=20
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int tabCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.green,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent),
      home: Scaffold(
        body: IndexedStack(
          index: tabCurrentIndex,
          children: <Widget>[
            HomePage(),
            SubjectsPage(),
            GroupsPage(),
            MarketPage(),
            ProfilePage()

          ],),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: tabCurrentIndex,
          onTap: (index) {
            setState(() {
              tabCurrentIndex = index;
            });
          },
          items: [
            TabBarItem("home","首頁"),
            TabBarItem("subjects","書影音"),
            TabBarItem("groups","分類"),
            TabBarItem("market","市集"),
            TabBarItem("male","我的"),
          ],
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          unselectedFontSize: 14,
          selectedFontSize: 14,
//          iconSize: 28,
        type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }

}


