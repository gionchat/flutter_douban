import 'package:flutter/material.dart';

class SubjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("書影音"),
        ),
        body: Center(
          child: Text(
            "書影音",
            style: TextStyle(fontSize: 30),
          ),
        ));
  }
}
