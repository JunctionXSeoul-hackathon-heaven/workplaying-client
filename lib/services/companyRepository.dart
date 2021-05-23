import 'package:flutter/cupertino.dart';
import 'package:workplaying_junx_seoul_heaven/models/competition.dart';
import 'package:workplaying_junx_seoul_heaven/models/company.dart';
import 'package:workplaying_junx_seoul_heaven/models/user.dart';

class CompanyRepository {
  static final CompanyRepository _instance = CompanyRepository._internal();
  List<Company> _companies;

  factory CompanyRepository() {
    return _instance;
  }
  CompanyRepository._internal(){
    load();
  }
  List<Company> getCompanies() => _companies;

  void load() {
    _companies = [];
    String heaven = "Heaven Co.";
    String amazon = "Amazon Inc.";
    String microsoft = "Microsoft Corporation";
    String toss = "Toss";
    String woowahan = "Woowahan";
    String google = "google";
    String junction = "Junction Co.";

    Company c = Company();
    c.name = heaven;

    Competition cp = Competition();
    cp.title  = "Mobile Kartrider Competition";
    cp.reward = "100,000";
    cp.start_date = "May 23, 2021 (Sun)";
    cp.description = '''Hi, We are "Workplaying". Our mission is to make the company space a little more enjoyable, and to become a little more intimate with my colleagues who spend half of the day.''';
    cp.description += "\nFurthermore, our goal is to create a world that everyone can enjoy.";
    cp.description += "\n\nEnjoy it together.";
    c.competitions.add(cp);

    var u = User();
    u.company = amazon;
    cp.users.add(u);

    u = User();
    u.company = microsoft;
    cp.users.add(u);

    u = User();
    u.company = toss;
    cp.users.add(u);

    u = User();
    u.company = woowahan;
    cp.users.add(u);

    u = User();
    u.company = google;
    cp.users.add(u);

    Competition cp2 = Competition();
    cp2.title  = "League of Legend Competition";
    cp2.reward = "500,000";
    cp2.start_date = "June 20, 2021 (Sun)";
    cp2.description = '''Hi, We are "Workplaying". Our mission is to make the company space a little more enjoyable, and to become a little more intimate with my colleagues who spend half of the day.''';
    cp2.description += "\nFurthermore, our goal is to create a world that everyone can enjoy.";
    cp2.description += "\n\nEnjoy it together.";
    c.competitions.add(cp2);

    u = User();
    u.company = amazon;
    cp2.users.add(u);

    u = User();
    u.company = toss;
    cp2.users.add(u);

    u = User();
    u.company = google;
    cp2.users.add(u);

    _companies.add(c);

    c = Company();
    c.name = amazon;
    cp = Competition();
    cp.title  = "Mobile Kartrider Competition";
    cp.reward = "100,000";
    cp.start_date = "May 23, 2021 (Sun)";
    cp.description = '''Hi, We are "Workplaying". Our mission is to make the company space a little more enjoyable, and to become a little more intimate with my colleagues who spend half of the day.''';
    cp.description += "\nFurthermore, our goal is to create a world that everyone can enjoy.";
    cp.description += "\n\nEnjoy it together.";
    c.competitions.add(cp);
    _companies.add(c);

    c = Company();
    c.name = microsoft;
    cp2 = Competition();
    cp2.title  = "League of Legend Competition";
    cp2.reward = "500,000";
    cp2.start_date = "June 20, 2021 (Sun)";
    cp2.description = '''Hi, We are "Workplaying". Our mission is to make the company space a little more enjoyable, and to become a little more intimate with my colleagues who spend half of the day.''';
    cp2.description += "\nFurthermore, our goal is to create a world that everyone can enjoy.";
    cp2.description += "\n\nEnjoy it together.";
    c.competitions.add(cp2);
    _companies.add(c);

    c = Company();
    c.name = junction;
    cp = Competition();
    cp.title  = "Mobile Kartrider Competition";
    cp.reward = "100,000";
    cp.start_date = "May 23, 2021 (Sun)";
    cp.description = '''Hi, We are "Workplaying". Our mission is to make the company space a little more enjoyable, and to become a little more intimate with my colleagues who spend half of the day.''';
    cp.description += "\nFurthermore, our goal is to create a world that everyone can enjoy.";
    cp.description += "\n\nEnjoy it together.";
    c.competitions.add(cp);
    _companies.add(c);
  }
}