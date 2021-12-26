import 'package:ecommerce_app/Interface/login.dart';
import 'package:ecommerce_app/Interface/splashscreen.dart';
import 'package:ecommerce_app/Utils/User_storage.dart';
import 'package:ecommerce_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() async{
 /*
  localStorage = await SharedPreferences.getInstance();*/
  WidgetsFlutterBinding.ensureInitialized();
  await DataHandler.start();
  runApp(const MyApp());
}
//late SharedPreferences localStorage;
class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dripps Commerce",
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      routes: routes,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SplashScreen(),
      ),
    );
  }
}
