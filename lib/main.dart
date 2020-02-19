import 'package:flutter/material.dart';
import 'package:helloworld/Resturant/meal_page.dart';
import 'package:helloworld/Screens/main_screen.dart';
import 'package:helloworld/pages/orders_page.dart';
//import 'package:helloworld/loginpage/sigin_page.dart';
//import 'package:helloworld/pages/home_page.dart';
import 'package:helloworld/pages/search_page.dart';

import 'Resturant/restaurant_home.dart';
import 'loginpage/sigin_page.dart';
//import 'loginpage/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      
      body: Center(
        child: SignInPage(),
      ),
 // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
