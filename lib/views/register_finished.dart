import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workplaying_junx_seoul_heaven/resources/Img_string.dart';
import 'package:workplaying_junx_seoul_heaven/resources/nav_string.dart';
import 'package:workplaying_junx_seoul_heaven/widget/main_button.dart';
import 'package:workplaying_junx_seoul_heaven/widget/title_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterFinished extends StatefulWidget {
  @override
  _RegisterFinished createState() => _RegisterFinished();
}

class _RegisterFinished extends State<RegisterFinished> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Column(
            children: [
              TitleWidget(false),
              SizedBox(
                height: 49,
              ),
              Text(
                "Your application\nparticipation completed.\nAre you ready to play\n together?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff333333),
                ),
              ),
              SizedBox(
                height: 140,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: Image(
                  width: 295,
                  height: 184,
                  image: AssetImage(resFinishedImageUri),
                ),
              ),
              Spacer(),
              Align(
                alignment: Alignment.center,
                child: Container(
                    margin: EdgeInsets.only(bottom: 30, left: 10, right: 10),
                    child: MainButton("Back to main", resMainViewUri)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
