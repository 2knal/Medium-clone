import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
	
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			darkTheme: ThemeData(
				brightness: Brightness.dark
			),
			home: Scaffold(
				appBar: AppBar(
					title: Text('User Profile'),
				    automaticallyImplyLeading: true,
					leading: IconButton(icon:Icon(Icons.arrow_back),
						onPressed:() => Navigator.pop(context, false),
					)
				),
				body: Center(
					child: Text('Profile'),
				),
			),
		);
	}
}