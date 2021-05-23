import 'package:workplaying_junx_seoul_heaven/models/user.dart';

class Competition{
  String title;
  String reward;
  String start_date;
  String description;
  bool isRegistered =false; // fake
  List<User> users = [];

  Competition() { }
}