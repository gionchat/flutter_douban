import 'package:flutter/material.dart';

class GroupsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("分類"),
        ),
        body: Center(
          child: Text(
            "分類",
            style: TextStyle(fontSize: 30),
          ),
        ));
  }
}
