import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workplaying_junx_seoul_heaven/models/user.dart';
import 'package:workplaying_junx_seoul_heaven/resources/nav_string.dart';
import 'package:workplaying_junx_seoul_heaven/services/userRepository.dart';
import 'package:workplaying_junx_seoul_heaven/widget/title_widget.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPage createState() => _SignInPage();
}

class _SignInPage extends State<SignInPage> {
  final TextEditingController userNameController = new TextEditingController();
  final TextEditingController companyNameController =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleWidget(false),
          SizedBox(
            height: 35,
          ),

          ///name
          Container(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                "Name",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              )),
          SizedBox(
            height: 8,
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                controller: userNameController,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: resSubColor),
                    ),
                    focusColor: resSubColor,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                    hintText: "Input Your Name",
                    hintStyle: TextStyle(
                      color: Color(0xffd3d3d3),
                    )),
              )),
          SizedBox(
            height: 20,
          ),

          ///company name
          Container(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                "Company",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              )),
          SizedBox(
            height: 8,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TextFormField(
              controller: companyNameController,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: resSubColor),
                  ),
                  focusColor: resSubColor,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6))),
                  hintText: "Input Your Company",
                  hintStyle: TextStyle(
                    color: Color(0xffd3d3d3),
                  )),
            ),
          ),
          Spacer(),

          /// bottom button
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(bottom: 30, left: 10, right: 10),
              child: Ink(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    color: resMainColor),
                child: InkWell(
                  child: Container(
                    width: 355,
                    height: 50,
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Playing in work",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        )),
                  ),
                  onTap: () {
                    User user = new User();
                    user.name = userNameController.text;
                    user.company = companyNameController.text;
                    UserRepository().updateUser(user);
                    Navigator.pushNamed(context, resMainViewUri);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
