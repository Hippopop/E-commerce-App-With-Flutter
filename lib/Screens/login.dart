import 'package:ecommerce_app/Screens/homepage.dart';
import 'package:ecommerce_app/Screens/registration.dart';
import 'package:ecommerce_app/Screens/splashscreen.dart';
import 'package:ecommerce_app/Screens/Widgets/grad_button.dart';
import 'package:ecommerce_app/Services/authentication.dart';
import 'package:ecommerce_app/Services/firestore_database.dart';
import 'package:ecommerce_app/Utils/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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
  bool loading = false;

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
                            ? "Have an account??"
                            : "Welcome back!"),
                      ),
                      (active != "blocked")
                          ? Text(
                              active.toUpperCase(),
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          : SizedBox(),
                      (active == "blocked")
                          ? TextField(
                              onSubmitted: (input) {
                                setState(() {
                                  active = input;
                                });
                              },
                              focusNode: user,
                              controller: userController,
                              decoration: inStyle.copyWith(
                                labelText: "Email",
                                errorText: validate
                                    ? "Please enter a right email here!"
                                    : null,
                                prefixIcon: Icon(
                                  Icons.mail_outlined,
                                  size: 24,
                                ),
                                suffixIcon: GestureDetector(
                                    onTap: () {
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
                                errorText: validate ? "Wrong Password" : null,
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      obsecure = !obsecure;
                                    });
                                  },
                                  child: Icon((obsecure)
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                ),
                              ),
                            ),
                      Container(
                        width: double.infinity,
                        height: (height * 0.075),
                        child: (loading)
                            ? SpinKitThreeInOut(
                                color: Color(0xaaa6c63ff),
                              )
                            : (active == "blocked")
                                ? GradButton(
                                    text: "Go",
                                    onPress: () async {
                                      /*   setState(() {
                                  active = userController.text;
                                });*/
                                      if (userController.text == "") {
                                        user.requestFocus();
                                      }
                                      if (userController.text.contains('@')) {
                                        setState(() {
                                          loading = true;
                                        });
                                        List<String> method =
                                            await AuthenticationController
                                                .startInstance
                                                .fetchSignInMethodsForEmail(
                                                    userController.text);
                                        print(method);
                                        if (method.isEmpty) {
                                          setState(() {
                                            loading = false;
                                          });
                                          const snackBar = SnackBar(
                                            content: Text('Unregistered Email'),
                                          );
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(snackBar);
                                        } else {
                                          setState(() {
                                            loading = false;
                                            active = userController.text;
                                            user.unfocus();
                                          });
                                        }
                                      } else {
                                        setState(() {
                                          validate = true;
                                        });
                                      }
                                    })
                                : GradButton(
                                    text: "Log in",
                                    onPress: () async {
                                      if (passController.text == "" ||
                                          passController.text.length < 6) {
                                        pass.requestFocus();
                                      }
                                      if (passController.text.length >= 6) {
                                        pass.unfocus();
                                        setState(() {
                                          loading = true;
                                        });
                                        final user =
                                            await AuthenticationController()
                                                .logUser(active,
                                                    passController.text);
                                        if (user == null) {
                                          setState(() {
                                            obsecure = true;
                                            loading = false;
                                            // active = "blocked";
                                            validate = true;
                                            //passController.clear();
                                            //userController.clear();
                                          });
                                          final snackBar = SnackBar(
                                            content: const Text(
                                                'Incorrect Password'),
                                            action: SnackBarAction(
                                                label: 'Go back??',
                                                onPressed: () {
                                                  setState(() {
                                                    loading = false;
                                                    obsecure = true;
                                                    active = "blocked";
                                                    validate = false;
                                                    passController.clear();
                                                    userController.clear();
                                                  });

                                                }),
                                          );
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(snackBar);
                                        } else {
                                          await FireStoreBase()
                                              .getUserData(user);
                                          Navigator.pushNamed(
                                              context, HomePage.route);
                                        }
                                        //Navigator.pushNamed(context, HomePage.route);
                                      }
                                      // else {
                                      //   setState(() {
                                      //     validate = true;
                                      //   });
                                      // }
                                      /* if(passController.text == "") {
                                  pass.requestFocus();
                                } if(passController.text == SplashScreen.currentUser.pass){
                                  Navigator.pushNamed(context, HomePage.route);
                                }
                                else {
                                  setState(() {
                                    validate = true;
                                  });
                                }*/
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
                          if (active == "blocked") {
                            Navigator.pushNamed(
                                context, RegistrationForm.route);
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
