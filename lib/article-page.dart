import 'package:flutter/material.dart';
class ArticlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
			darkTheme: ThemeData(
				brightness: Brightness.dark
			),
			home: Scaffold(
				appBar: AppBar(
          backgroundColor: Colors.black,
					title: Text('Article'),
				    automaticallyImplyLeading: true,
					leading: IconButton(icon:Icon(Icons.arrow_back),
						onPressed:() => Navigator.pop(context, false),
					),
          actions: <Widget>[
            Icon(
              Icons.more_vert,
            )
          ],
				),
				body: Center(
          
					child: 
          Container(
            height: 1000,
            child: Text('Article page')
          )
          
				),
			),
		);
  }
}