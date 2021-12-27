import 'package:ecommerce_app/Interface/homepage.dart';
import 'package:ecommerce_app/Interface/splashscreen.dart';
import 'package:ecommerce_app/Utils/User_storage.dart';
import 'package:ecommerce_app/Utils/grad_button.dart';
import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  static final route = "/Interface/registration";

  const RegistrationForm({Key? key}) : super(key: key);

  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final formKey = GlobalKey<FormState>();
  final nameCont = TextEditingController();
  final mailCont = TextEditingController();
  final phoneCont = TextEditingController();
  final passCont = TextEditingController();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameCont.addListener(() {
      setState(() {
      });
    });
    mailCont.addListener(() {
      setState(() {

      });
    });
    phoneCont.addListener(() {
      setState(() {

      });
    });
    passCont.addListener(() {
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: (height * 0.0200), horizontal: (width * 0.020)),
          decoration: const BoxDecoration(

              ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    //alignment: Alignment.center,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Image.asset(
                          "Assets/images/undraw_Mobile_posts_re_bpuw.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        flex: 8,
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Center(
                                    child:
                                        Text("Please input the informations"),
                                  ),
                                ),
                                Expanded(
                                    flex: 8,
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
                                                if (name!.isEmpty ||
                                                    name == null) {
                                                  return "Please enter a valid name.";
                                                } if(name.length<4) {
                                                  return "Name is too short!";
                                                } if(name.contains(" ")) {
                                                    return "Can't have a space in name";
                                                }
                                              },
                                              // controller: mailController,
                                              decoration: InputDecoration(
                                                labelText: "User",
                                                prefixIcon: Icon(Icons
                                                    .account_circle_outlined),
                                                suffixIcon: Icon(Icons.cancel)

                                              ),
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                              textInputAction:
                                                  TextInputAction.next,
                                            ),

                                            TextFormField(
                                              controller: mailCont,
                                              validator: (name) {
                                                if (name!.isEmpty ||
                                                    name == null) {
                                                  return "Please enter a valid mail.";
                                                }
                                              },
                                              // controller: mailController,
                                              decoration: InputDecoration(
                                                labelText: "Email",
                                                prefixIcon:
                                                    Icon(Icons.email_outlined),
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
                                              controller: phoneCont,
                                              validator: (name) {
                                                if (name!.isEmpty ||
                                                    name == null) {
                                                  return "Please enter a valid phone number.";
                                                }
                                              },
                                              // controller: mailController,
                                              decoration: InputDecoration(
                                                labelText: "Phone Number",
                                                prefixIcon:
                                                    Icon(Icons.call_outlined),
                                                suffixIcon: IconButton(
                                                  icon: Icon(Icons.cancel),
                                                  onPressed: () {
                                                    //   mailController.clear();
                                                  },
                                                ),
                                              ),
                                              keyboardType:
                                                  TextInputType.number,
                                              textInputAction:
                                                  TextInputAction.next,
                                            ),

                                            TextFormField(
                                              controller: passCont,
                                              validator: (name) {
                                                if (name!.isEmpty ||
                                                    name == null) {
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
                                                      : Icon(
                                                          Icons.visibility_off),
                                                  onPressed: () {
                                                    setState(() {});
                                                  },
                                                ),
                                              ),
                                            ),
                                            TextFormField(
                                              validator: (name) {
                                                if (name!.isEmpty ||
                                                    name == null) {
                                                  return "Please enter a password.";
                                                }
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Confirm",
                                                prefixIcon:
                                                    Icon(Icons.checklist_sharp),
                                                suffixIcon: IconButton(
                                                  icon: true
                                                      ? Icon(Icons.visibility)
                                                      : Icon(
                                                          Icons.visibility_off),
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
                                  flex: 1,
                                  child: GradButton(
                                      text: "Submit",
                                      onPress: () async{
                                        if (formKey.currentState!
                                            .validate()) {
                                          User me = User(nameCont.text, mailCont.text, phoneCont.text, "https://assets.materialup.com/uploads/5b045613-638c-41d9-9b7c-5f6c82926c6e/preview.png", passCont.text);
                                          DataHandler.saveData(me);
                                          Navigator.pushReplacementNamed(context, HomePage.route);
                                          SplashScreen.currentUser = me;
                                        }
                                      }),
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
    );
  }
}
