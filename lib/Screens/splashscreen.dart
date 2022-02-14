import 'package:ecommerce_app/Screens/homepage.dart';
import 'package:ecommerce_app/Screens/login.dart';
import 'package:ecommerce_app/Screens/registration.dart';
import 'package:ecommerce_app/Controllers/User_storage.dart';
import 'package:ecommerce_app/Services/firestore_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login.dart';
import 'dart:async';
class SplashScreen extends StatefulWidget {
  //static var currentUser = ((DataHandler.loadData()))?? User("name", "email", "phone", "img"," pass");
/*
 static UserStorage user = UserStorage(currentUser: DataHandler.loadData());
*/
  SplashScreen({Key? key, required this.state, this.user}) : super(key: key);
int state;
User? user;
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: widget.state), () async{
      if(widget.state == 2) {
        Navigator.pushReplacementNamed(context, LogInPage.route);
      }
      if(widget.state == 3) {
        await FireStoreBase().getUserData(widget.user!);
        Navigator.pushReplacementNamed(context, HomePage.route);
      }
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Spacer(
            flex: 3,
          ),
          const Expanded(
            flex: 3,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SpinKitFadingCube(
                color: Color(0xaaa6c63ff),
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Expanded(
            flex: 11,
            child: Center(
              child: Image.asset(
                "Assets/images/undraw_Exploring_re_grb8.png",
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "SDMGA Flutter Team ",
                    ),
                    FaIcon(
                      FontAwesomeIcons.infinity,
                      color: Color(0xfffff6584),
                      size: 18,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
