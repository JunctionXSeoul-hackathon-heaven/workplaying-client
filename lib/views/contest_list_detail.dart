import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workplaying_junx_seoul_heaven/models/company.dart';
import 'package:workplaying_junx_seoul_heaven/models/competition.dart';
import 'package:workplaying_junx_seoul_heaven/resources/nav_string.dart';
import 'package:workplaying_junx_seoul_heaven/widget/contest_card_widget.dart';
import 'package:workplaying_junx_seoul_heaven/widget/title_widget.dart';

class ContestListDetail extends StatefulWidget {
  Company _company;

  ContestListDetail(this._company);

  @override
  _ContestListDetail createState() => _ContestListDetail();
}

class _ContestListDetail extends State<ContestListDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TitleWidget(true),
              ListView.builder(
                padding: EdgeInsets.all(0),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: this.widget._company.competitions.length,
                itemBuilder: (context, index) {
                  /// Card view 2
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                      children: [
                    ContestCardWidget(this.widget._company.competitions[index]),
                    Container(
                      height: 10,
                      decoration: BoxDecoration(color: Color(0xffe5e5e5)),
                    )
                  ]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
