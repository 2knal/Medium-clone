import 'package:flutter/material.dart';
import './drawer/drawerContents.dart';
import './drawer/profile.dart';
import './drawer/follower.dart';
import './drawer/following.dart';
import 'package:medium_clone/article.dart';
import 'package:medium_clone/article-page.dart';

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
				'/following': (BuildContext context) => Following(),
        '/article-page': (BuildContext context) => ArticlePage()
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
              icon: Icons.mobile_screen_share,
              text: 
              '''No one can deny that flutter has taken the mobile development sphere by a storm! But is it really as awesome as it sounds? Today we are going to take a look at it and try and see if its a good tool for us.

So, according to the flutter website.

Flutter is Google’s mobile app SDK for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source.

And the description fits quite well. Flutter does make creating beautiful custom mobile UI a lot simpler. Currently in beta 3, it is ready for production and is already being adopted by various agencies and even by big names like Alibaba.
                  ''',
              ),
              MediumArticle(
              suggestedTopic: 'SPORTS',
              title:'Play football',
              user:'Kunal S',
              date: '25/7/19 . 12 min read',
              icon: Icons.local_pizza,
              text: 
              '''Football khelne aayega?
                  ''',
              ),
              MediumArticle(
              suggestedTopic: 'PROGRAMMING',
              title:'Flutter is damn awesome and heres why',
              user:'Vignesh V',
              date: '25/7/19 . 160 min read',
              icon: Icons.today,
              text: 
              '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean et nisi rhoncus, feugiat orci quis, posuere purus. Etiam viverra sagittis nulla, eu fringilla risus convallis ut. Donec eleifend magna rutrum est vehicula sagittis. Pellentesque diam tellus, vestibulum eu aliquet ac, vestibulum et augue. Mauris volutpat sollicitudin gravida. Cras nec venenatis est. Duis fermentum, metus vel fringilla blandit, elit felis bibendum ligula, sed malesuada lorem ipsum vel nisl. Sed aliquet nunc sed velit efficitur, in tincidunt dolor consectetur. Donec vitae risus sem.
Curabitur rhoncus urna pulvinar fermentum efficitur. Proin quis faucibus nunc. Integer maximus sollicitudin congue. Donec tincidunt sapien sed odio consequat auctor. Aliquam ex diam, ullamcorper non sollicitudin non, imperdiet a erat. Sed dictum laoreet consectetur. Donec tincidunt dolor id sem posuere, quis lacinia massa interdum. Nam rhoncus neque sem. Vivamus maximus nibh vel velit scelerisque, sed pellentesque augue elementum. 
                  ''',
              ),
              MediumArticle(
              suggestedTopic: 'PROGRAMMING',
              title:'Flutter is damn awesome and heres why',
              user:'Vignesh V',
              date: '25/7/19 . 160 min read',
              icon: Icons.local_atm,
              text: 
              '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean et nisi rhoncus, feugiat orci quis, posuere purus. Etiam viverra sagittis nulla, eu fringilla risus convallis ut. Donec eleifend magna rutrum est vehicula sagittis. Pellentesque diam tellus, vestibulum eu aliquet ac, vestibulum et augue. Mauris volutpat sollicitudin gravida. Cras nec venenatis est. Duis fermentum, metus vel fringilla blandit, elit felis bibendum ligula, sed malesuada lorem ipsum vel nisl. Sed aliquet nunc sed velit efficitur, in tincidunt dolor consectetur. Donec vitae risus sem.
Curabitur rhoncus urna pulvinar fermentum efficitur. Proin quis faucibus nunc. Integer maximus sollicitudin congue. Donec tincidunt sapien sed odio consequat auctor. Aliquam ex diam, ullamcorper non sollicitudin non, imperdiet a erat. Sed dictum laoreet consectetur. Donec tincidunt dolor id sem posuere, quis lacinia massa interdum. Nam rhoncus neque sem. Vivamus maximus nibh vel velit scelerisque, sed pellentesque augue elementum. 
                  ''',
              ),
              MediumArticle(
              suggestedTopic: 'PROGRAMMING',
              title:'Flutter is damn awesome and heres why',
              user:'Vignesh V',
              date: '25/7/19 . 160 min read',
              icon: Icons.pages,
              text: 
              '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean et nisi rhoncus, feugiat orci quis, posuere purus. Etiam viverra sagittis nulla, eu fringilla risus convallis ut. Donec eleifend magna rutrum est vehicula sagittis. Pellentesque diam tellus, vestibulum eu aliquet ac, vestibulum et augue. Mauris volutpat sollicitudin gravida. Cras nec venenatis est. Duis fermentum, metus vel fringilla blandit, elit felis bibendum ligula, sed malesuada lorem ipsum vel nisl. Sed aliquet nunc sed velit efficitur, in tincidunt dolor consectetur. Donec vitae risus sem.
Curabitur rhoncus urna pulvinar fermentum efficitur. Proin quis faucibus nunc. Integer maximus sollicitudin congue. Donec tincidunt sapien sed odio consequat auctor. Aliquam ex diam, ullamcorper non sollicitudin non, imperdiet a erat. Sed dictum laoreet consectetur. Donec tincidunt dolor id sem posuere, quis lacinia massa interdum. Nam rhoncus neque sem. Vivamus maximus nibh vel velit scelerisque, sed pellentesque augue elementum. 
                  ''',
              ),
              MediumArticle(
              suggestedTopic: 'PROGRAMMING',
              title:'Flutter is damn awesome and heres why',
              user:'Vignesh V',
              date: '25/7/19 . 160 min read',
              icon: Icons.satellite,
              text: 
              '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean et nisi rhoncus, feugiat orci quis, posuere purus. Etiam viverra sagittis nulla, eu fringilla risus convallis ut. Donec eleifend magna rutrum est vehicula sagittis. Pellentesque diam tellus, vestibulum eu aliquet ac, vestibulum et augue. Mauris volutpat sollicitudin gravida. Cras nec venenatis est. Duis fermentum, metus vel fringilla blandit, elit felis bibendum ligula, sed malesuada lorem ipsum vel nisl. Sed aliquet nunc sed velit efficitur, in tincidunt dolor consectetur. Donec vitae risus sem.
Curabitur rhoncus urna pulvinar fermentum efficitur. Proin quis faucibus nunc. Integer maximus sollicitudin congue. Donec tincidunt sapien sed odio consequat auctor. Aliquam ex diam, ullamcorper non sollicitudin non, imperdiet a erat. Sed dictum laoreet consectetur. Donec tincidunt dolor id sem posuere, quis lacinia massa interdum. Nam rhoncus neque sem. Vivamus maximus nibh vel velit scelerisque, sed pellentesque augue elementum. 
                  ''',
              ),
              MediumArticle(
              suggestedTopic: 'PROGRAMMING',
              title:'Flutter is damn awesome and heres why',
              user:'Vignesh V',
              date: '25/7/19 . 160 min read',
              icon: Icons.ac_unit,
              text: 
              '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean et nisi rhoncus, feugiat orci quis, posuere purus. Etiam viverra sagittis nulla, eu fringilla risus convallis ut. Donec eleifend magna rutrum est vehicula sagittis. Pellentesque diam tellus, vestibulum eu aliquet ac, vestibulum et augue. Mauris volutpat sollicitudin gravida. Cras nec venenatis est. Duis fermentum, metus vel fringilla blandit, elit felis bibendum ligula, sed malesuada lorem ipsum vel nisl. Sed aliquet nunc sed velit efficitur, in tincidunt dolor consectetur. Donec vitae risus sem.
Curabitur rhoncus urna pulvinar fermentum efficitur. Proin quis faucibus nunc. Integer maximus sollicitudin congue. Donec tincidunt sapien sed odio consequat auctor. Aliquam ex diam, ullamcorper non sollicitudin non, imperdiet a erat. Sed dictum laoreet consectetur. Donec tincidunt dolor id sem posuere, quis lacinia massa interdum. Nam rhoncus neque sem. Vivamus maximus nibh vel velit scelerisque, sed pellentesque augue elementum. 
                  ''',
              ),
            ],
            
          )
				),
			)
		);
	}
}

