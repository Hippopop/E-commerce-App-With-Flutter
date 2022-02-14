import 'dart:io';

import 'package:ecommerce_app/Screens/homepage.dart';
import 'package:ecommerce_app/Screens/splashscreen.dart';
import 'package:ecommerce_app/Controllers/User_storage.dart';
import 'package:ecommerce_app/Screens/Widgets/grad_button.dart';
import 'package:ecommerce_app/Services/authentication.dart';
import 'package:ecommerce_app/Services/firestore_database.dart';
import 'package:ecommerce_app/Utils/utilities.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  static final route = "/Interface/registration";

  const RegistrationForm({Key? key}) : super(key: key);

  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}
enum Gender{
male,
female,
other
}
class _RegistrationFormState extends State<RegistrationForm> {
  final formKey = GlobalKey<FormState>();
  final nameCont = TextEditingController();
  final mailCont = TextEditingController();
  final passCont = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameCont.addListener(() {
      setState(() {});
    });
    mailCont.addListener(() {
      setState(() {});
    });
    passCont.addListener(() {
      setState(() {});
    });
  }
  File? _image;
  Gender current = Gender.male;
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    void _getImage(ImageSource source) async {
      final image = await ImagePicker().pickImage(
          source: source,
      );
      if (image != null) {
             final fileImg = File(image.path);
 setState(() {
          _image = fileImg;
        });
      }
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(
                vertical: (height * 0.0200), horizontal: (width * 0.020)),
            decoration: const BoxDecoration(),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                            flex: 5,
                            child: Stack(
                              alignment: Alignment.center,
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(3),
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey[400],
                                  ),
                                  child: CircleAvatar(
                                    radius: 150,
                                    backgroundImage: const AssetImage(
                                      "Assets/images/undraw_male_avatar_323b.png",
                                    ),
                                    foregroundImage: (_image == null)? null: FileImage(_image!),
                                  )
                                ),
                                Positioned(
                                    bottom: -16,
                                    child: GestureDetector(
                                      onTap: () {
                                        showModalBottomSheet(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return SafeArea(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    ListTile(
                                                      leading:
                                                          Icon(Icons.camera),
                                                      title: Text('Camera'),
                                                      onTap: () async {
                                                         _getImage(
                                                            ImageSource.camera);
                                                        Navigator.pop(context);
                                                      },
                                                    ),
                                                    ListTile(
                                                      leading:
                                                          Icon(Icons.image),
                                                      title:
                                                          Text('Gallery'),
                                                      onTap: () async {
                                                        _getImage(
                                                            ImageSource.gallery);
                                                        Navigator.pop(context);
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              );
                                            });
                                      },
                                      child: Container(
                                        padding: EdgeInsets.all(3),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: baseGrad,
                                        ),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ))
                              ],
                            )),
                        Spacer(
                          flex: 1,
                        ),
                        Expanded(
                          flex: 15,
                          //alignment: Alignment.bottomCenter,
                          child: Card(
                            //color: Color(0xfff0468BF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 8,
                            child: Container(
                              height: height * 0.5,
                              padding: EdgeInsets.only(
                                  left: 8,
                                  top: 8,
                                  right: (width * 0.030),
                                  bottom: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    flex: 10,
                                    child: Container(
                                      padding: EdgeInsets.only(top: 8),
                                      child:
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Please input the informations"),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: [
                                                  Card(

                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(16),
                                                    ),
                                                    elevation: 3,
                                                    color: Colors.grey[100],
                                                    child: Row(
                                                      children: [
                                                        Radio(value: Gender.male, groupValue: current, onChanged: (Gender? value) {
                                                          if(value!= null){
                                                            setState(() {
                                                              current = value;
                                                            });
                                                          }
                                                        },
                                                        activeColor: Colors.deepPurpleAccent[400],
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(top: 8, bottom: 8, right: 12),
                                                          child: Text("Male", style: TextStyle( fontWeight: FontWeight.w600, fontSize: 16),),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Card(
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(16),
                                                    ),
                                                    elevation: 3,
                                                    color: Colors.grey[100],
                                                    child: Row(
                                                      children: [
                                                        Radio(value: Gender.female, groupValue: current, onChanged: (Gender? value) {
                                                          if(value!= null){
                                                            setState(() {
                                                              current = value;
                                                            });
                                                          }
                                                        },
                                                          activeColor: Colors.deepPurpleAccent[400],
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(top: 8, bottom: 8, right: 12),
                                                          child: Text("Female", style: TextStyle( fontWeight: FontWeight.w600, fontSize: 16),),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Card(
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(16),
                                                    ),
                                                    elevation: 3,
                                                    color: Colors.grey[100],
                                                    child: Row(
                                                      children: [
                                                        Radio(value: Gender.other, groupValue: current, onChanged: (Gender? value) {
                                                          if(value!= null){
                                                            setState(() {
                                                              current = value;
                                                            });
                                                          }
                                                        },
                                                          activeColor: Colors.deepPurpleAccent[400],
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(top: 8, bottom: 8, right: 12),
                                                          child: Text("Others", style: TextStyle( fontWeight: FontWeight.w600, fontSize: 16),),
                                                        ),
                                                      ],
                                                    ),
                                                  ),

                                                ],
                                              )
                                            ],
                                          ),
                                    ),
                                  ),
                                  Expanded(
                                      flex: 42,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: (width * 0.050),
                                            vertical: 10),
                                        child: Form(
                                          key: formKey,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              TextFormField(
                                                controller: nameCont,
                                                validator: (name) {
                                                  if (name!.isEmpty) {
                                                    return "Please enter a valid name.";
                                                  }
                                                  if (name.length < 4) {
                                                    return "Name is too short!";
                                                  }
                                                  if (name.contains("@")) {
                                                    return "Can't have a space in name";
                                                  }
                                                },
                                                // controller: mailController,
                                                decoration: InputDecoration(
                                                    labelText: "User name",
                                                    prefixIcon:
                                                        Icon(Icons.face),
                                                    suffixIcon:
                                                        Icon(Icons.cancel)),
                                                keyboardType:
                                                    TextInputType.emailAddress,
                                                textInputAction:
                                                    TextInputAction.next,
                                              ),
                                              TextFormField(
                                                controller: mailCont,
                                                validator: (mail) {
                                                  if (mail!.isEmpty || !mail.contains('@')) {
                                                    return "Please enter a valid mail.";
                                                  }
                                                },
                                                // controller: mailController,
                                                decoration: InputDecoration(
                                                  labelText: "Email",
                                                  prefixIcon: Icon(Icons
                                                      .mail),
                                                  suffixIcon: IconButton(
                                                    icon: Icon(Icons.cancel),
                                                    onPressed: () {
                                                      //   mailController.clear();
                                                    },
                                                  ),
                                                ),
                                                keyboardType:
                                                    TextInputType.emailAddress,
                                                textInputAction:
                                                    TextInputAction.next,
                                              ),
                                              TextFormField(
                                                controller: passCont,
                                                validator: (name) {
                                                  if (name!.isEmpty) {
                                                    return "Please enter a valid password.";
                                                  }
                                                },
                                                // controller: passController,
                                                // obscureText: obsecure,
                                                decoration: InputDecoration(
                                                  labelText: "Password",
                                                  prefixIcon: Icon(Icons.lock),
                                                  suffixIcon: IconButton(
                                                    icon: true
                                                        ? Icon(Icons.visibility)
                                                        : Icon(Icons
                                                            .visibility_off),
                                                    onPressed: () {
                                                      setState(() {});
                                                    },
                                                  ),
                                                ),
                                              ),
                                              TextFormField(
                                                validator: (name) {
                                                  if (name!.isEmpty) {
                                                    return "Please enter a password.";
                                                  }
                                                },
                                                decoration: InputDecoration(
                                                  labelText: "Confirm",
                                                  prefixIcon: Icon(
                                                      Icons.checklist_sharp),
                                                  suffixIcon: IconButton(
                                                    icon: true
                                                        ? Icon(Icons.visibility)
                                                        : Icon(Icons
                                                            .visibility_off),
                                                    onPressed: () {
                                                      setState(() {
                                                        // obsecure = !obsecure;
                                                      });
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                  Expanded(
                                    flex: 8,
                                    child: (loading)? const SpinKitThreeInOut(
                                      color: Color(0xaaa6c63ff),
                                    ): GradButton(
                                        text: "Submit",
                                        onPress: () async {

                                          if(formKey.currentState!.validate() && _image!= null){
                                            setState(() {
                                              loading = true;
                                            });
                                            final User user = await AuthenticationController().registerUser(mailCont.text, passCont.text);
                                            await FireStoreBase().uploadUserData(user, nameCont.text, user.email!, passCont.text, current.name, _image!);
                                            FireStoreBase().getUserData(user);
                                            Navigator.pushReplacementNamed(context, HomePage.route);
                                          }
                                          else {
                                            setState(() {
                                              loading = false;
                                            });
                                            final snackBar = SnackBar(
                                              content:
                                              const Text('Unusable information. Please fix.'),
                                            );
                                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                          }






                                          //   if (formKey.currentState!.validate()) {
                                          //     User me = User(
                                          //         nameCont.text,
                                          //         mailCont.text,
                                          //          phoneCont.text,
                                          //         "https://images.unsplash.com/photo-1539125530496-3ca408f9c2d9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODl8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                                          //          passCont.text);
                                          //      DataHandler.saveData(me);
                                          //     Navigator.pushReplacementNamed(
                                          //        context, HomePage.route);
                                          //      SplashScreen.currentUser = me;
                                          //   }

                                        }
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
