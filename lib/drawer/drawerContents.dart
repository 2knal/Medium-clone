import 'package:flutter/material.dart';

class DrawerContents extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		
		return ListView(
			padding: EdgeInsets.zero,
			children: <Widget>[
        Container(
          height: 250,
          child:DrawerHeader(
					child: 
          Padding(
            padding: EdgeInsets.only(
              right: 150,

            ),
          child:
          Column(children: <Widget>[
          Icon(Icons.account_circle, size: 100.0,),
          Text(
            'Vignesh V'
          ),
          ListTile(
            title: Text(
									'See Profile', 
								),
								onTap: () {
									// Pass random data to emulate logged in user
									Navigator.pushNamed(context, "/profile");
								},
          )
          ],
          ),
          ),
          
          
					decoration: BoxDecoration(
						color: Colors.white,
					),
				),),
				
				Container(
					//color: Colors.black45,
					child: Column(
						children: <Widget>[
							ListTile(
								title: Text(
									'Home', 
								),
								onTap: () {
									// Pass random data to emulate logged in user
									Navigator.pushNamed(context, "/");
								},
							),
              ListTile(
								title: Text(
									'Audio', 
								),
								onTap: () {
									// Pass random data to emulate logged in user
									Navigator.pushNamed(context, "/");
								},
							),
              ListTile(
								title: Text(
									'Bookmarks', 
								),
								onTap: () {
									// Pass random data to emulate logged in user
									Navigator.pushNamed(context, "/");
								},
							),
              ListTile(
								title: Text(
									'Interests', 
								),
								onTap: () {
									// Pass random data to emulate logged in user
									Navigator.pushNamed(context, "/");
								},
							),
              Divider(),
              ListTile(
								title: Text(
									'Become a member', 
                  style: TextStyle(color: Colors.green),
								),
								onTap: () {
									// Pass random data to emulate logged in user
									Navigator.pushNamed(context, "/");
								},
							),
              Divider(),
              ListTile(
								title: Text(
									'New story', 
								),
								onTap: () {
									// Pass random data to emulate logged in user
									Navigator.pushNamed(context, "/");
								},
							),
              ListTile(
								title: Text(
									'Stats', 
								),
								onTap: () {
									// Pass random data to emulate logged in user
									Navigator.pushNamed(context, "/");
								},
							),
              ListTile(
								title: Text(
									'Stories', 
								),
								onTap: () {
									// Pass random data to emulate logged in user
									Navigator.pushNamed(context, "/");
								},
							),

			
						],
					)
				)
			],
		);
	}
}