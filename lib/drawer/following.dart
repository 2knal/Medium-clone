import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../loader.dart';
import '../arguments.dart';
import './profile.dart';

class Following extends StatefulWidget {
	@override
	FollowingState createState() => new FollowingState();
}

class FollowingState extends State<Following> {

	var data, load = true;	
	
	Future<String> getData() async {
		var response = await http.get(
			Uri.encodeFull("https://randomuser.me/api/?results=10"),
			headers: {
				"Accept": "application/json"
			}
		);

		this.setState(() {
			data = json.decode(response.body)['results'];
			load = false;
		});

		return "Success!";
	}
	
	@override
	void initState(){
		super.initState();
		this.getData();
	}

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			routes: {
				'/profile': (BuildContext context) => Profile()
			},
			darkTheme: ThemeData(
				brightness: Brightness.dark
			),
			home: Scaffold(
				appBar: AppBar(
          backgroundColor: Colors.black,
					title: Text('Your Following'),
				    automaticallyImplyLeading: true,
					leading: IconButton(icon:Icon(Icons.arrow_back),
						onPressed:() => Navigator.pop(context, false),
					)
				),
				body: load ? Loader(): ListView.builder(
					itemCount: data == null ? 0 : data.length,
					itemBuilder: (BuildContext context, int index){

						// Return Proper full-width containers
						return ListTile(
							leading: CircleAvatar(
								// child: Text(data[index]['name']['first'][0])
								backgroundImage: NetworkImage(data[index]['picture']['medium']),
							),
							title: Text(data[index]['name']['first'] + ' ' + data[index]['name']['last']),
							subtitle: Text(data[index]['email']),
							onTap: () {
								// Pass specific user data to profile 
								Navigator.pushNamed(
									context, 
									"/profile", 
									arguments: ScreenArguments(
										data[index]['name']['first'] + ' ' + data[index]['name']['last'],
										data[index]['email'],
										data[index]['picture']['large'],
										data[index]['registered']['date']
									)
								);
							},
						);
					},
				),
			),
		);
	}
}

