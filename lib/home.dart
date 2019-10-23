import 'package:flutter/material.dart';
import './drawer/drawerContents.dart';

class Home extends StatefulWidget {
	@override
	_HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
	
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Medium',
			home: Scaffold(
				drawer: Drawer(
					child: DrawerContents()
				),
				backgroundColor: Colors.black,
				appBar: AppBar(
					title: Text('Home'),
					backgroundColor: Colors.black,
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
						style: TextStyle(color: Colors.white),
					),
				),
			)
		);
	}
}