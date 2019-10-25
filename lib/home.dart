import 'package:flutter/material.dart';
import './drawer/drawerContents.dart';
import './drawer/profile.dart';
import './drawer/follower.dart';
import './drawer/following.dart';

class Home extends StatefulWidget {
	@override
	_HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
	
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Medium',
			routes: {
				'/profile': (BuildContext context) => Profile(),
				'/follower': (BuildContext context) => Follower(),
				'/following': (BuildContext context) => Following()
			},
      		darkTheme: ThemeData(
				brightness: Brightness.dark
			),
			home: Scaffold(
				drawer: Drawer(
					child: DrawerContents()
				),
				// backgroundColor: Colors.black,
				appBar: AppBar(
					title: Text('Home'),
					//backgroundColor: Colors.black,
					leading: Builder(
						builder: (context) => IconButton(
							icon: Icon(Icons.menu),
							onPressed: () => Scaffold.of(context).openDrawer(),
						)
					)
				),
				body: Center(
					child: Text(
						'Medium home',
						// style: TextStyle(color: Colors.white),
					),
				),
			)
		);
	}
}