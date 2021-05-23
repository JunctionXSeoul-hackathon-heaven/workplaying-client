import 'package:workplaying_junx_seoul_heaven/models/user.dart';

class UserRepository {
  static final UserRepository _instance = UserRepository._internal();
  User _user;

  factory UserRepository() {
    return _instance;
  }
  UserRepository._internal(){ }
  User getUser() => _user;
  void updateUser(User u)=> _user = u;
}

class AllUserRepository {
  static final AllUserRepository _instance = AllUserRepository._internal();
  List<User> _user;

  factory AllUserRepository() {
    return _instance;
  }
  AllUserRepository._internal(){
    var u = User();
    u.name = "yohan";
    u.company = "microsoft";
    _user.add(u);

    u = User();
    u.name = "dowon";
    u.company = "aws";
    _user.add(u);

    u = User();
    u.name = "junho";
    u.company = "junctionXseoul";
    _user.add(u);

    u = User();
    u.name = "heera";
    u.company = "heaven";
    _user.add(u);

  }
  List<User> getUsers() => _user;
}