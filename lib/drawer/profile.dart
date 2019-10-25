import 'package:flutter/material.dart';
import '../arguments.dart';

class Profile extends StatelessWidget {
	
	@override
	Widget build(BuildContext context) {

		final ScreenArguments args = ModalRoute.of(context).settings.arguments;
		String name = args == null ? 'logged in user' : args.name;
		// print(args);

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
        		// Real Stuff goes here!
				body: Center(
					child: Text('Profile of ' + name),
				),
			),
		);
	}
}