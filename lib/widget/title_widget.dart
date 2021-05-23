import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workplaying_junx_seoul_heaven/resources/nav_string.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TitleWidget extends StatelessWidget {
  final bool _showBackNav;

  TitleWidget(this._showBackNav);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 0,
            ),
            Stack(
              children: [
                Visibility(
                  child: GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(left: 18),
                      child: FaIcon(
                        FontAwesomeIcons.arrowLeft,
                        color: Color(0xff707070),
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  visible: _showBackNav,
                ),
                Align(
                  alignment: Alignment.center,
                  child:
                      /*
                  Image(
                    image: AssetImage(resWorkPlayingImageUri),
                  )*/ Text(
                    "Workplaying",
                    style: TextStyle(color: resMainColor, fontSize: 24),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(height: 1, color: Color(0xffe5e5e5))
          ],
        ),
      ),
    );
  }
}
