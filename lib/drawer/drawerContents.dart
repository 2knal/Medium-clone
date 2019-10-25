import 'package:flutter/material.dart';

class DrawerContents extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		
		return ListView(
			padding: EdgeInsets.zero,
			children: <Widget>[
				DrawerHeader(
					child: Icon(Icons.account_circle, size: 150.0,),
					decoration: BoxDecoration(
						color: Colors.black45,
					),
				),
				Container(
					//color: Colors.black45,
					child: Column(
						children: <Widget>[
							ListTile(
								title: Text(
									'Profile', 
								),
								onTap: () {
									Navigator.pushNamed(context, "/profile");
								},
							),
							ListTile(
								title: Text(
									'Followers', 
								),
								onTap: () {
									Navigator.pushNamed(context, "/follower");
								},
							),
							ListTile(
								title: Text(
									'Folowing', 
								),
								onTap: () {
									Navigator.pushNamed(context, "/following");
								},
							),
						],
					)
				)
			],
		);
	}
}