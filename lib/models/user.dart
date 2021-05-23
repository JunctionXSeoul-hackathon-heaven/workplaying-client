import 'package:workplaying_junx_seoul_heaven/models/competition.dart';

class User {
  String name;
  String company;
  List<Competition> competitions;

  @override
  bool operator ==(Object o) => o is User && o.name == name;

  String getSmallLogo(){
    String res;
    switch(company)
    {
      case "Amazon Inc.":
        res = "images/company/small_aws.png";
        break;
      case "Microsoft Corporation":
        res = "images/company/small_microsoft.png";
        break;
      case "google":
        res = "images/company/small_google.png";
        break;
      case "Toss":
        res = "images/company/small_toss.png";
        break;
      case "Woowahan":
        res = "images/company/small_woowahan.png";
        break;
    }
    return res;
  }
}
