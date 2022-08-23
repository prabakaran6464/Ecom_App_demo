import 'package:shared_preferences/shared_preferences.dart';
class Appshared{
  static Future<void> SaveIntro(String save)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("hecto", save);
  }
  static Future<String> getIntro()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("hecto")??"no text";
  }
  static Future<void> Saveloginame(String save)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("loginname", save);
  }
  static Future<String> getloginname()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("loginname")??"user";
  }
  static Future<void> Saveloginphoto(String save)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("loginphoto", save);
  }
  static Future<String> getloginphoto()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("loginphoto")??"user";
  }
   static Future<void> saveshirt(String shirt)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("saveshirtname", shirt);
   }
   static Future<String> getshirt()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("saveshirtname")??"";
   }

   static Future<void> saveshirtphoto(String shirtphoto)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("saveshirt", shirtphoto);
   }
   static Future<String> getshirtphoto()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("saveshirt")??"";
   }

   static Future<void> saveprice(String price)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("saveshirtprice", price);
   }
   static Future<String> getprice()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("saveshirtprice")??"";
   }
}

