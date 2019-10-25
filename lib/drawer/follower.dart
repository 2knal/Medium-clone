import 'package:flutter/material.dart';

class Follower extends StatelessWidget {
	
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			darkTheme: ThemeData(
				brightness: Brightness.dark
			),
			home: Scaffold(
				appBar: AppBar(
					title: Text('Your Followers'),
				    automaticallyImplyLeading: true,
					leading: IconButton(icon:Icon(Icons.arrow_back),
						onPressed:() => Navigator.pop(context, false),
					)
				),
				body: Center(
					child: Text('Follower list'),
				),
			),
		);
	}
}