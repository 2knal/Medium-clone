import 'package:flutter/material.dart';

class MediumArticle extends StatelessWidget {
  const MediumArticle({
    Key key,
    this.icon,
    this.suggestedTopic,
    this.title,
    this.user,
    this.date,
  }) : super(key: key);
  final IconData icon;
  final String suggestedTopic;
  final String title;
  final String user;
  final String date;
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
            onTap:(){
              print('hi');
              Navigator.pushNamed(context, "/article-page");
            },
            child: 
     Padding(
      padding: const EdgeInsets.fromLTRB(15.0, 20.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(children: <Widget>[
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget>[
          Text(
            suggestedTopic,
            style: const TextStyle(
              fontSize: 15.0,
              color: Colors.grey
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Container(
            width: 280,
            child:Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 22.0,
            ),
          ),
          ),
          
          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Text(
            user,
            style: const TextStyle(fontSize: 15.0,
            color: Colors.grey
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
          Text(
            date,
            style: const TextStyle(fontSize: 15.0,
            color: Colors.grey,
            ),
          ),]
          ),
          Column(children: <Widget>[
            Padding(
            padding:const EdgeInsets.only(
            left: 0,
          ),
            child:
          Icon(
            icon,
            size: 80,
          )
          ),
          Row(
            children: <Widget>[
            Padding(
            padding:const EdgeInsets.only(
            left: 0,
            top: 20,
          ),
            child:
          Icon(
            Icons.bookmark_border,
            size: 25,
          ),
          ),
          Padding(
            padding:const EdgeInsets.only(
            left: 20,
            top: 20,
          ),
            child:
          Icon(
            Icons.more_vert,
            size:25,
          ))],)
          
          ],
          )
          
        ],
      ),
      Divider()
      ],)
     ),
    );
  }
}