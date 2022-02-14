import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/Modules/user_module.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';

class FireStoreBase {
  CollectionReference dataBase =
      FirebaseFirestore.instance.collection('User_Info');

  Future uploadUserData(User user, String name, String email, String password,
      String gender, File image) async {
    final ref = FirebaseStorage.instance
        .ref()
        .child('user_images')
        .child(user.uid + '.jpg');
    await ref.putFile(image);
    String link = await ref.getDownloadURL();
    dataBase.doc(user.uid).set({
      'gender': gender,
      'name': name,
      'image': link,
      'email': email,
      'password': password,
    });
  }

  Future getUserData(User user) async {
    final document = await dataBase.doc(user.uid).get();
    UserBox.userSetter(user, document['name'], document['image'], document['password'], document['gender']);
  }
}
