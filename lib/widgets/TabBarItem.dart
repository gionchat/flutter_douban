import 'package:flutter/material.dart';

class TabBarItem extends BottomNavigationBarItem {
  TabBarItem(String iconName, String title)
      : super(
            icon:
                Image.asset("assets/images/ic_tab_${iconName}.png", width: 30),
            activeIcon: Image.asset(
              "assets/images/ic_tab_${iconName}_active.png",
              width: 30,
            ),
            title: Text(title));
}
