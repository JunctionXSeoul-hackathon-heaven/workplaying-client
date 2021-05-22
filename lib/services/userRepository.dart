import 'package:workplaying_junx_seoul_heaven/models/user.dart';

class UserRepository {
  static final UserRepository _instance = UserRepository._internal();
  User _user;

  factory UserRepository() {
    return _instance;
  }
  UserRepository._internal(){
  }
  User getUser() => _user;
  void updateUser(User u)=> _user = u;
}