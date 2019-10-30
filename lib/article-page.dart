import 'package:flutter/material.dart';
import 'article.dart';

class ArticlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ArtcileArgs args = ModalRoute.of(context).settings.arguments;

    return MaterialApp(
			darkTheme: ThemeData(
				brightness: Brightness.dark
			),
			home: Scaffold(
				appBar: AppBar(
          backgroundColor: Colors.black,
					title: Text(args.suggestedTopic),
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
				body:
        SingleChildScrollView(
          child: Center(
					child: 
          Container(
            child: 
            Padding(
              padding: EdgeInsets.only(
                top: 30,
                left: 20,
                right: 20
              ),
              child: Column(
              children: <Widget>[
                Icon(args.icon,
                size: 90,
                ),
                Text(args.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25,
                  ),
                ),
                Padding(padding: EdgeInsets.only(
                  bottom: 20
                ),
                child: Text(args.user + '   ' + args.date,
                
                style:TextStyle(color: Colors.grey))
                ,
                ),
                
            
                 Text(
                  args.text,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 17),
                  
                ),
                
                

              ],
            ),
            )
            
            
          )
          
				),
        ) 
			),
		);
  }
}