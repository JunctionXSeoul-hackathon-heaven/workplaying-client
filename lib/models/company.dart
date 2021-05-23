import 'competition.dart';

class Company{
  String name;
  List<Competition> competitions;
  Company(){
    competitions = [];
  }

  String getBigLogo(){
    String res;
    switch(name)
    {
      case "Heaven Co.":
        res = "images/company/heaven.png";
        break;
      case "Amazon Inc.":
        res = "images/company/aws.png";
        break;
      case "Microsoft Corporation":
        res = "images/company/microsoft.png";
        break;
      case "Junction Co.":
        res = "images/company/junctionx.png";
        break;
    }
    return res;
  }


}