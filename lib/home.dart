import 'package:flutter/material.dart';
import './drawer/drawerContents.dart';
import './drawer/profile.dart';
import './drawer/follower.dart';
import './drawer/following.dart';
import 'package:medium_clone/article.dart';

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
				backgroundColor: Colors.white,
				appBar: AppBar(
					title: Text('Home'),
					backgroundColor: Colors.black,
					leading: Builder(
						builder: (context) => IconButton(
							icon: Icon(Icons.menu),
							onPressed: () => Scaffold.of(context).openDrawer(),
						)
					),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                right: 15
              ),
              child:Icon(
              Icons.notifications_none,
            ) ,
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 10
              ),
              child:Icon(
              Icons.search,
            ) ,
            )
            
          ],
				),
				body: Center(
					child: ListView(
            children: <MediumArticle>[
              
              MediumArticle(
              suggestedTopic: 'PROGRAMMING',
              title:'Flutter is damn awesome and heres why',
              user:'Vignesh V',
              date: '25/7/19 . 160 min read',
              icon: Icons.access_alarm,
              ),
              MediumArticle(
              suggestedTopic: 'Woahh',
              title:'Hello',
              user:'Ok',
              date: '25/7/19',
              icon: Icons.local_pizza,
              ),
              
              MediumArticle(
              suggestedTopic: 'PROGRAMMING',
              title:'Flutter is damn awesome and heres why',
              user:'Vignesh V',
              date: '25/7/19 . 160 min read',
              icon: Icons.access_alarm,
              ),
              MediumArticle(
              suggestedTopic: 'PROGRAMMING',
              title:'Flutter is damn awesome and heres why',
              user:'Vignesh V',
              date: '25/7/19 . 160 min read',
              icon: Icons.access_alarm,
              ),
              MediumArticle(
              suggestedTopic: 'PROGRAMMING',
              title:'Flutter is damn awesome and heres why',
              user:'Vignesh V',
              date: '25/7/19 . 160 min read',
              icon: Icons.access_alarm,
              ),
              MediumArticle(
              suggestedTopic: 'PROGRAMMING',
              title:'Flutter is damn awesome and heres why',
              user:'Vignesh V',
              date: '25/7/19 . 160 min read',
              icon: Icons.access_alarm,
              ),
              MediumArticle(
              suggestedTopic: 'PROGRAMMING',
              title:'Flutter is damn awesome and heres why',
              user:'Vignesh V',
              date: '25/7/19 . 160 min read',
              icon: Icons.access_alarm,
              ),
            ],
            
          )
				),
			)
		);
	}
}

