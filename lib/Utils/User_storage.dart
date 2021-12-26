import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
/*

class UserStorage{
  User currentUser;

  UserStorage({required this.currentUser});

  User get getUser => currentUser;
}
*/





class User {
  final String name;
  final String email;
  final String phone;
  final String img;
  final String pass;

  User(this.name, this.email, this.phone, this.img, this.pass);

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'img': img,
      'pass': pass,
    };
  }
  factory User.fromJson(Map<String, dynamic> json) {
    return User(json['name'], json['email'], json['phone'], json['img'], json['pass']);
  }
}

class DataHandler {
 static late final SharedPreferences prefs;
 static start() async{
   prefs = await SharedPreferences.getInstance();
 }
  static loadData() {
    String? classJson = prefs.getString("userTojson");
    if(classJson == null) {
      return null;
    } else {
      User currUser = User.fromJson(jsonDecode(classJson));
      print(currUser.name);
      return currUser;
    }
  }
  static saveData(User user) {
    String json = jsonEncode(user.toJson());
    print(json);
    prefs.setString("userTojson", json);
  }

  static clearAllData() {
    prefs.clear();
  }
}