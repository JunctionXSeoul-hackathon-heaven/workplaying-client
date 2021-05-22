import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workplaying_junx_seoul_heaven/models/user.dart';
import 'package:workplaying_junx_seoul_heaven/resources/nav_string.dart';
import 'package:workplaying_junx_seoul_heaven/services/userRepository.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPage createState() => _SignInPage();
}

class _SignInPage extends State<SignInPage> {
  final TextEditingController userNameController = new TextEditingController();
  final TextEditingController companyNameController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          Text("이름"),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: userNameController,
          ),
          Text("이름"),
          TextFormField(
            controller: companyNameController,
          ),
          Spacer(),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Ink(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                    color: Colors.blueAccent),
                child: InkWell(
                  child: Container(
                    width: 220,
                    height: 70,
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "hi",
                        )),
                  ),
                  onTap: () {
                    User user = new User();
                    user.name = userNameController.text;
                    user.companyName = companyNameController.text;
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
