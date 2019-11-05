import 'package:flutter/material.dart';
import '../arguments.dart';

class Profile extends StatelessWidget {
	
	@override
	Widget build(BuildContext context) {

		final ScreenArguments args = ModalRoute.of(context).settings.arguments;
		String name = args == null ? 'User' : args.name;
		// print(args);

		return MaterialApp(
			// darkTheme: ThemeData(
			// 	brightness: Brightness.dark
			// ),
			home: Scaffold(
				appBar: AppBar(
          backgroundColor: Colors.black,
					title: Text('Profile'),
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
            child: ListView(
            children: <Widget>
            [
            
            Icon(Icons.account_circle,
            size: 80,
            ),
            Text(name,
            style: TextStyle(fontSize: 40),),
            Divider(),
            Container(
              height: 200,
              child:
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
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
									'Following', 
								),
								onTap: () {
									Navigator.pushNamed(context, "/following");
								},
              ),
                ],)
                
            ],)
            ),
          ],)
          ,
          )
          
				),
			),
		);
	}
}