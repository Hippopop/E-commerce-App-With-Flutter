import 'package:ecommerce_app/Screens/homepage.dart';
import 'package:ecommerce_app/Screens/login.dart';
import 'package:ecommerce_app/Screens/registration.dart';
import 'package:ecommerce_app/Controllers/User_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'login.dart';
import 'dart:async';
class SplashScreen extends StatefulWidget {
  static var currentUser = ((DataHandler.loadData()))?? User("name", "email", "phone", "img"," pass");
/*
 static UserStorage user = UserStorage(currentUser: DataHandler.loadData());
*/
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 4), () {
      if(SplashScreen.currentUser.name == "name"){
        Navigator.pushReplacementNamed(context, RegistrationForm.route);

      } else {
        //currentUser = user;
        Navigator.pushReplacementNamed(context, LogInPage.route);
      }
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Spacer(
            flex: 3,
          ),
          Expanded(
            flex: 3,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SpinKitFadingCube(
                color: Color(0xaaa6c63ff),
              ),
            ),
          ),
          Spacer(
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
                  children: [
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
