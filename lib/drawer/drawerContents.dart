import 'package:flutter/material.dart';

class DrawerContents extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		
		return ListView(
			padding: EdgeInsets.zero,
			children: <Widget>[
				DrawerHeader(
					child: Text(
						'Drawer Header', 
						style: TextStyle(color: Colors.white),
					),
					decoration: BoxDecoration(
						color: Colors.black87,
					),
				),
				Container(
					
					color: Colors.black45,
					child: Column(
						children: <Widget>[
							ListTile(
								title: Text(
									'Profile', 
								),
								onTap: () {
									Navigator.pop(context);
								},
							),
							ListTile(
								title: Text(
									'Followers', 
								),
								onTap: () {
									Navigator.pop(context);
								},
							),
							ListTile(
								title: Text(
									'Folowing', 
								),
								onTap: () {
									Navigator.pop(context);
								},
							),
						],
					)
				)
			],
		);
	}
}