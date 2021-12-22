import 'package:ecommerce_app/Interface/homepage.dart';
import 'package:ecommerce_app/Interface/splashscreen.dart';
import 'package:ecommerce_app/Utils/grad_button.dart';
import 'package:ecommerce_app/Utils/utilities.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  static final String route = "lib\Interface\login.dart";

  const LogInPage({Key? key}) : super(key: key);

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final mailController = TextEditingController();
  final passController = TextEditingController();
  bool obsecure = true;
  String active = "blocked";

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();

    mailController.addListener(() {
      setState(() {});
    });
    mailController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.symmetric(
            vertical: (height * 0.050), horizontal: (width * 0.050)),
        decoration: const BoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
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
                      vertical: (height * 0.040), horizontal: (width * 0.050)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Center(
                        child: Text("Have an account??"),
                      ),

                      TextField(
                        onSubmitted: (input) {
                          setState(() {
                            active = input;
                          });
                        },
                        controller: mailController,
                        decoration: InputDecoration(
                          labelText: "User",
                          prefixIcon: Icon(
                            Icons.account_circle_rounded,
                            size: 24,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.cancel),
                            onPressed: () {
                              setState(() {
                                active = "blocked";
                                mailController.clear();
                              });
                            },
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                      ),

                      //SizedBox(height: (height*0.050),),
                      (active == "blocked")
                          ? Container()
                          : TextField(
                              controller: passController,
                              obscureText: obsecure,
                              decoration: InputDecoration(
                                labelText: "Password",
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: IconButton(
                                  icon: obsecure
                                      ? Icon(Icons.visibility)
                                      : Icon(Icons.visibility_off),
                                  onPressed: () {
                                    setState(() {
                                      obsecure = !obsecure;
                                    });
                                  },
                                ),
                              ),
                            ),

                      Container(
                          width: double.infinity,
                          height: (height * 0.075),
                          child: GradButton(text: "Log in", onPress: () {
                            Navigator.pushNamed(context, HomePage.route);
                          })),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: (active == "blocked")
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Create an account  ",
                          style: TextStyle(color: Colors.black54),
                        ),
                        Container(
                            decoration: BoxDecoration(),
                            child: ElevatedButton(
                                onPressed: () {
                                  //Navigator.pushNamed(context, RegisterPage.routeName);
                                },
                                style: ElevatedButton.styleFrom(
                                  elevation: 10,
                                ),
                                child: Text(
                                  "Register",
                                  style: TextStyle(color: Colors.white),
                                ))),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Forgot Password??  ",
                          style: TextStyle(color: Colors.black54),
                        ),
                        Container(
                            child: ElevatedButton(
                                onPressed: () {
                                  //Navigator.pushNamed(context, Password.routeName);
                                },
                                style: ElevatedButton.styleFrom(
                                  elevation: 10,
                                ),
                                child: Text(
                                  "Get Help!",
                                  style: TextStyle(color: Colors.white),
                                ))),
                      ],
                    ),
            )
          ],
        ),
      ),
    );
  }
}
