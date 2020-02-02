import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_douban/model/Subject.dart';

class MovieListItem extends StatelessWidget {
  Subject subject;

  MovieListItem(this.subject);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border:
          Border(bottom: BorderSide(width: 10, color: Color(0xFFE0E0E0)))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          getRankWidget(),
          SizedBox(
            height: 10,
          ),
          getMovieContentWidget(),
          SizedBox(
            height: 10,
          ),
          getOriginNameWidget(),
        ],
      ),
    );
  }

  Widget getMovieContentWidget() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.network(
              subject.images.small,
              height: 160,
            )),
        getDetailWidget(),
        Text("line0000"),
        getWishWidget(),
      ],
    );
  }

  Widget getWishWidget() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
      child: Column(
        children: <Widget>[
          Image.asset(
            "assets/images/ic_info_wish.png",
            width: 40,
            height: 40,
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            "想看",
            style: TextStyle(
                fontSize: 16, color: Color.fromARGB(255, 235, 170, 60)),
          )
        ],
      ),
    );
  }

  Widget getRankWidget() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFEECD90),
        borderRadius: BorderRadius.circular(3),
      ),
      padding: EdgeInsets.fromLTRB(9, 4, 9, 4),
      child: Text(
        "NO.${subject.rank}",
        style: TextStyle(fontSize: 18, color: Colors.black54),
      ),
    );
  }

  Widget getOriginNameWidget() {
    return Container(
      width: double.infinity,
      height: 50,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE),
        borderRadius: BorderRadius.circular(5),
      ),
      padding: EdgeInsets.fromLTRB(9, 4, 9, 4),
      child: Text(
        "${subject.original_title}",
        style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 131, 95, 36)),
      ),
    );
  }

  Widget getDetailWidget() {
    return Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(children: <Widget>[
                Icon(Icons.play_circle_outline,color: Colors.red,size: 24,),
                Text(subject.title,style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                ),
                Text("(${subject.year})",style: TextStyle(fontSize: 13),)
              ],),
              Text("ratingstar"),
              Text("intro"),
            ],
          ),
        ));
  }
}
