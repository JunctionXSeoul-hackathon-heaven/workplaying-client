import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workplaying_junx_seoul_heaven/resources/Img_string.dart';
import 'package:workplaying_junx_seoul_heaven/resources/nav_string.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    new Future.delayed(const Duration(seconds: 3), () {
      print("future called");
      Navigator.pushNamed(context, resSigninUri);
    });
    return Scaffold(
      backgroundColor: resMainColor,
      body: Container(
        child: Align(
            alignment: Alignment.center,
            child: Image(
              width: 210,
              height: 141,
              image: AssetImage(resLogoImageUri),
            )),
      ),
    );
  }
}
