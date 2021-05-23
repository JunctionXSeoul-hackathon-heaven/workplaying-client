import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workplaying_junx_seoul_heaven/models/competition.dart';
import 'package:workplaying_junx_seoul_heaven/resources/nav_string.dart';
import 'package:workplaying_junx_seoul_heaven/services/userRepository.dart';
import 'package:workplaying_junx_seoul_heaven/widget/main_button.dart';

class ContestCardWidget extends StatelessWidget {
  Competition _contest;

  ContestCardWidget(this._contest);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.only(left: 14),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 47,
          ),
          Text(
            _contest.title,
            //this.widget._company.contest[index]?.name??""
            style: TextStyle(
                color: Color(0xff333333),
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Reward",
            //this.widget._company.contest[index]?.name??""
            style: TextStyle(
                color: Color(0xff333333),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          Padding(
              padding: EdgeInsets.only(top: 4),
              child: RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: [
                    TextSpan(
                        text: this._contest.reward,
                        style:
                            TextStyle(color: Color(0xff333333), fontSize: 14)),
                    TextSpan(
                        text: "원",
                        style:
                            TextStyle(color: Color(0xff333333), fontSize: 14)),
                  ],
                ),
              )),
          SizedBox(
            height: 20,
          ),
          Text(
            "Date",
            //this.widget._company.contest[index]?.name??""
            style: TextStyle(
                color: Color(0xff333333),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.only(top: 4),
            child: Text(
              this._contest.start_date,
              style: TextStyle(color: Color(0xff333333), fontSize: 14),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Introduce",
            //this.widget._company.contest[index]?.name??""
            style: TextStyle(
                color: Color(0xff333333),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.only(top: 4),
            child: Text(
              this._contest.description,
              style: TextStyle(color: Color(0xff333333), fontSize: 14),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Participant Company",
            //this.widget._company.contest[index]?.name??""
            style: TextStyle(
                color: Color(0xff333333),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),

          ///ListView Start
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: _contest.users.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(right: 8),
                  width: 50,
                  height: 50,
                  child: Image(
                    image: AssetImage(_contest.users[index].getSmallLogo()),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffd3d3d3), width: 1),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(50, 50))),
                );
              },
            ),
          ),

          ///Listview End
          SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.center,
            child: _contest.isRegistered == false
                ? Ink(
                    width: 355,
                    height: 50,
                    child: InkWell(
                      onTap: () {
                        _contest.isRegistered = true;
                        Navigator.pushNamed(context, resRegisterFinishedUri);
                      },
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Join Competition",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      border: Border.all(color: resMainColor),
                      color: resMainColor,
                    ),
                  )
                : Ink(
                    width: 355,
                    height: 50,
                    child: InkWell(
                      onTap: () {},
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Competition already participated",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      border: Border.all(color: Color(0xffd3d3d3)),
                      color: Color(0xffd3d3d3),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
