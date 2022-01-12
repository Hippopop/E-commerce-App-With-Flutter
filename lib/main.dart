import 'dart:async';

import 'package:ecommerce_app/Modules/shop_files.dart';
import 'package:ecommerce_app/Modules/user_files.dart';
import 'package:ecommerce_app/Screens/homepage.dart';
import 'package:ecommerce_app/Screens/login.dart';
import 'package:ecommerce_app/Screens/splashscreen.dart';
import 'package:ecommerce_app/Services/authentication.dart';
import 'package:ecommerce_app/Services/firestore_database.dart';
import 'package:ecommerce_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'Controllers/User_storage.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //await DataHandler.start();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ShopState()),
      ChangeNotifierProvider(create: (context) => UserProducts()),
    ],
    child: const MyApp()));
}
class MyApp extends StatefulWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  StreamController controller = StreamController();
  @override
  Widget build(BuildContext context) {
    // StreamSubscription subscription;
    // subscription = AuthenticationController().userCheck.listen((event) { })
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SHOPIN",
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      routes: routes,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: StreamBuilder<User?>(
            stream: AuthenticationController().userCheck.distinct(),
            builder:(context, snapshot) {
            if(snapshot.hasError || snapshot.connectionState == ConnectionState.waiting) {return SplashScreen(state: 4,);}
            if(snapshot.hasData) {

              return SplashScreen(state: 3, user: snapshot.data,);
            } else {
              return  SplashScreen(state: 2);
            }
            },
    ),
      ),
    );
  }
}
