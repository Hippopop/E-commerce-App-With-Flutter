import 'package:ecommerce_app/Services/authentication.dart';
import 'package:firebase_auth/firebase_auth.dart';
class UserDoc {
  String? id;
  String email;
  String name;
  String imgLink;
  String password;
  String gender;

  UserDoc({this.id, required this.email, required this.name, required this.imgLink, required this.password, required this.gender});
  factory UserDoc.currentUser(User user, String name, String imgLink, String password, String gender) {
    return UserDoc(id: user.uid, email: user.email!, name: name, imgLink: imgLink, password: password, gender: gender);
  }
}

class UserBox {
  static UserDoc currentUser = UserDoc(email: 'blank@gmail.com', name: 'empty', imgLink: 'empty', password: 'empty', gender: 'others');
  static userSetter(User? user, String name, String imgLink, String password, String gender) {
    if(user == null) {
    return null;
    }else {
      currentUser = UserDoc.currentUser(user, name, imgLink, password, gender);
    }
  }
}