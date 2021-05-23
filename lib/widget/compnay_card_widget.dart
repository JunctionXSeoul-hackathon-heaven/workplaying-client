import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workplaying_junx_seoul_heaven/models/company.dart';
import 'package:workplaying_junx_seoul_heaven/resources/nav_string.dart';

class CompanyCardWidget extends StatelessWidget {
  Company _company;

  CompanyCardWidget(this._company);

  @override
  Widget build(BuildContext context) {
    bool maskOn = false;
    for (var com in _company.competitions) maskOn |= com.isRegistered;

    return Stack(
      children: [
        Theme(
          data: ThemeData(splashColor: resSubColor),
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              color: Colors.white,
              border: Border.all(color: Color(0xffd3d3d3), width: 1),
            ),
            child: InkWell(
              child: Container(
                child: Column(mainAxisSize: MainAxisSize.max, children: [
                  SizedBox(
                    height: 46,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Image(
                      width: 110,
                      image: AssetImage(_company.getBigLogo()),
                    ),
                  ),
                  Spacer(),
                  Text(
                    _company.name,
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(height: 10),
                ]),
              ),
              onTap: () {
                Navigator.pushNamed(context, resContestDetailViewUri,
                    arguments: _company);
              },
            ),
          ),
        ),
        Visibility(
          visible: maskOn,
          child: IgnorePointer(
            child: Container(
              width: double.maxFinite,
              height: double.maxFinite,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Participation\ncompleted",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              decoration: BoxDecoration(color: Color(0xa62979ff)),
            ),
          ),
        ),
      ],
    );
  }
}
