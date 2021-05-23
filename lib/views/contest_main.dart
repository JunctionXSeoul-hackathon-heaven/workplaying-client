import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:workplaying_junx_seoul_heaven/models/company.dart';
import 'package:workplaying_junx_seoul_heaven/resources/nav_string.dart';
import 'package:workplaying_junx_seoul_heaven/services/companyRepository.dart';
import 'package:workplaying_junx_seoul_heaven/widget/compnay_card_widget.dart';
import 'package:workplaying_junx_seoul_heaven/widget/title_widget.dart';

class ContestMain extends StatefulWidget {
  @override
  _ContestMain createState() => _ContestMain();
}

class _ContestMain extends State<ContestMain> {
  List<Company> _list;
  @override
  Widget build(BuildContext context) {
    _list = CompanyRepository().getCompanies();

    return Scaffold(
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TitleWidget(false),
              SizedBox(
                height: 49,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "Live competition list",
                    style: TextStyle(
                      color: Color(0xff333333),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              FutureBuilder(
                future: printF(),
                builder: (context, snapshot) {
                  if (snapshot.hasData == true) {
                    return Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: GridView.builder(
                          padding: EdgeInsets.all(0),
                          physics: ClampingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: _list?.length,
                          gridDelegate:
                          SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10),
                          //CardView
                          itemBuilder: (context, index) =>
                              CompanyCardWidget(_list[index])
                        ),
                      ),
                    );
                  } else {
                    return Align(
                        alignment: Alignment.center,
                        child: CircularProgressIndicator());
                  }
                },),
            ],
          ),
        ),
      ),
    );
  }

  Future<bool> printF() async {
    /// api calling
    var response = await Dio().get('http://www.google.com');
    print(response);
    return true;
  }
}
