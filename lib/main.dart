import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:workplaying_junx_seoul_heaven/resources/nav_string.dart';
import 'package:workplaying_junx_seoul_heaven/views/contest_list_detail.dart';
import 'package:workplaying_junx_seoul_heaven/views/contest_main.dart';
import 'package:workplaying_junx_seoul_heaven/views/register_finished.dart';
import 'package:workplaying_junx_seoul_heaven/views/sign_in.dart';
import 'package:workplaying_junx_seoul_heaven/views/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final pagesRouteFactories = {
    resSigninUri: (args) => MaterialPageRoute(
          builder: (context) => WillPopScope(
              child: WillPopScope(
                child: SignInPage(),
              ),
              onWillPop: () async {}),
        ),
    resMainViewUri: (args) => MaterialPageRoute(
          builder: (context) => WillPopScope(
            child: ContestMain(),
            onWillPop: () async {},
          ),
        ),
    resContestDetailViewUri: (args) => MaterialPageRoute(
          builder: (context) => WillPopScope(
            child: ContestListDetail(args),
            onWillPop: () async {},
          ),
        ),
    resRegisterFinishedUri: (args) => MaterialPageRoute(
          builder: (context) => WillPopScope(
            child: RegisterFinished(),
            onWillPop: () async {},
          ),
        ),
  };

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: (route) =>
          pagesRouteFactories[route.name](route.arguments),
      title: 'workplaying',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      color: Color(0xff2979FF),
      home: SplashScreen(),
    );
  }
}
