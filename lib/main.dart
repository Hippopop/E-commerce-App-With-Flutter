import 'package:ecommerce_app/Interface/splashscreen.dart';
import 'package:ecommerce_app/Utils/User_storage.dart';
import 'package:ecommerce_app/routes.dart';
import 'package:flutter/material.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await DataHandler.start();
  runApp(const MyApp());
}
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
