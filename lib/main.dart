import 'dart:async';
import 'package:flutter/material.dart';
import './home.dart';

void main() {
	runApp(
		MaterialApp(
			// home: Home()
			home: SplashScreen(),
			routes: <String, WidgetBuilder>{
				'/home': (BuildContext context) => Home()
			},
		)
	);
}

class SplashScreen extends StatefulWidget {
	@override
	_SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
	startTime() async {
		var _duration = Duration(seconds: 2);
		return Timer(_duration, navigationPage);
	}

	void navigationPage() {
		Navigator.of(context).pushReplacementNamed('/home');
	}

	@override
	void initState() {
		super.initState();
		startTime();
	}

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			home: Scaffold(
				body: Container(
					decoration: BoxDecoration(
						image: DecorationImage(
							image: AssetImage("images/splash_screen.jpeg"),
							fit: BoxFit.cover,
						),
					),
					child: null,
				),
			)
		);
	}
}