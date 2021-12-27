import 'package:ecommerce_app/Interface/homepage.dart';
import 'package:ecommerce_app/Interface/registration.dart';
import 'package:ecommerce_app/Interface/splashscreen.dart';
import 'package:ecommerce_app/Utils/User_storage.dart';
import 'package:ecommerce_app/Utils/grad_button.dart';
import 'package:ecommerce_app/Utils/utilities.dart';
import 'package:ecommerce_app/main.dart';
import 'package:ecommerce_app/routes.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  static final String route = "lib\Interface\login.dart";

  const LogInPage({Key? key}) : super(key: key);

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final userController = TextEditingController();
  final passController = TextEditingController();
  bool obsecure = true;
  String active = "blocked";
  bool validate = false;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();

    userController.addListener(() {
      setState(() {});
    });
    userController.addListener(() {
      setState(() {});
    });
  }
FocusNode user = FocusNode();
FocusNode pass = FocusNode();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      //resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.symmetric(
            vertical: (height * 0.050), horizontal: (width * 0.050)),
        decoration: const BoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: Image.asset("Assets/images/undraw_Welcome_re_h3d9.png"),
            ),
            Expanded(
              flex: 5,
              //alignment: Alignment.bottomCenter,
              child: Card(
                elevation: 15,
                child: Container(
                  height: height * 0.5,
                  padding: EdgeInsets.symmetric(
                      vertical: (height * 0.0250), horizontal: (width * 0.050)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Center(
                        child: Text((active == "blocked")
                            ?"Have an account??": "Welcome back!"),
                      ),

                      (active != "blocked")
                          ?Text(active.toUpperCase(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,), ): SizedBox(),

                      (active == "blocked")
                          ?TextField(
                        onSubmitted: (input) {
                          setState(() {
                            active = input;
                          });
                        },
                        focusNode: user,
                        controller: userController,
                        decoration: inStyle.copyWith(
                          labelText: "User",
                          errorText: validate? "Please enter the right user name!": null,
                          prefixIcon: Icon(
                            Icons.account_circle_rounded,
                            size: 24,
                          ),
                          suffixIcon: GestureDetector(
                              onTap:  () {
                                user.unfocus();
                                setState(() {
                                  active = "blocked";
                                  userController.clear();
                                });
                              },
                              child: Icon(Icons.cancel)),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                      )
                          : TextField(
                        focusNode: pass,
                              controller: passController,
                              obscureText: obsecure,
                              decoration: InputDecoration(
                                labelText: "Password",
                                errorText: validate?"Wrong Password": null,
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: GestureDetector(
                                  onTap:  () {setState(() {
                                    obsecure = !obsecure;
                                  });
                                  },
                                  child: Icon((obsecure)
                                      ?Icons.visibility: Icons.visibility_off),
                                ),
                              ),
                            ),

                      Container(
                          width: double.infinity,
                          height: (height * 0.075),
                          child: (active == "blocked")
                              ? GradButton(text: "Go", onPress: (){
                             /*   setState(() {
                                  active = userController.text;
                                });*/
    if(userController.text == "") {
    user.requestFocus();
    } if(userController.text == SplashScreen.currentUser.name){
setState(() {
  active = userController.text;
  user.unfocus();
});
    }
    else {
    setState(() {
    validate = true;
    });
    }



                          }) : GradButton(
                              text: "Log in",
                              onPress: () {
                                if(passController.text == "") {
                                  pass.requestFocus();
                                } if(passController.text == SplashScreen.currentUser.pass){
                                  Navigator.pushNamed(context, HomePage.route);
                                }
                                else {
                                  setState(() {
                                    validate = true;
                                  });
                                }
                              },
                          ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      (active == "blocked")
                          ? "Would you like to join??  "
                          : "Forgot Password??  ",
                      style: TextStyle(color: Colors.black54),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if(active == "blocked"){
                            Navigator.pushNamed(context, RegistrationForm.route);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 10,
                          padding: EdgeInsets.all(0),
                        ),
                        child: Container(
                          height: 40,
                          width: 80,
                           decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              //gradient: baseGrad,
                             color: Colors.grey,
                            ),
                          child: Center(
                            child: Text(
                              (active == "blocked") ? "Register" : "Get Help!",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
