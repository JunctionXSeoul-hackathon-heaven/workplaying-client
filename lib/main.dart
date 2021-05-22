import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:workplaying_junx_seoul_heaven/resources/nav_string.dart';
import 'package:workplaying_junx_seoul_heaven/views/contest_list_detail.dart';
import 'package:workplaying_junx_seoul_heaven/views/contest_main.dart';
import 'package:workplaying_junx_seoul_heaven/views/sign_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final pagesRouteFactories = {
    resMainViewUri: (args) =>
        MaterialPageRoute(builder: (context) =>
            WillPopScope(
              child: ContestMain(),
              onWillPop: () async {},),
        ),
    resContestDetailViewUri: (args)=>
        MaterialPageRoute(builder: (context) =>
            WillPopScope(
              child: ContestListDetail(),
              onWillPop: () async {},),
        ),
  };

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: (route)=> pagesRouteFactories[route.name](route.arguments),
      title: 'workplaying',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SignInPage(),
    );
  }
}

