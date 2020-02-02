import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_douban/model/Subject.dart';
import 'package:flutter_douban/network/HttpLite.dart';

import 'item/MovieListItem.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("首頁"),
        ),
        body: HomeBody());
  }
}

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  List<Subject> movieList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    HttpLite.request("http://douban.uieee.com/v2/movie/top250?start=0&count=5")
        .then((res) {
      final subjects = res.data["subjects"];
      //print("subjects: $subjects");
      List<Subject> subjectList = [];
      for (var subject in subjects) {
        subjectList.add(Subject.fromJson(subject));
        print("=======> ${Subject.fromJson(subject).title}");
      }
      print("subjectList: ${subjectList.toString()}");
      setState(() {
      movieList = subjectList;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
          itemCount: movieList.length,
          itemBuilder: (BuildContext context, int index) {
            movieList[index].rank = index +1;
            return MovieListItem(movieList[index]);
          }),
    );
  }
}
