import 'package:ecommerce_app/Interface/splashscreen.dart';
import 'package:ecommerce_app/Utils/User_storage.dart';
import 'package:ecommerce_app/routes.dart';
import 'package:flutter/material.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await DataHandler.start();
  runApp(const MyApp());
}




//For those who are trying to learn from it.
// First of all never ever manage your widgets state like this. Do it for fun or small projects like this. 
// But if you wanna build a good app for yourself or anything. Always use a state managing tool. Don't do it like this.
// Also don't create a mess like me. Make your code more organized. And make it more readable. 
// I'll try my best to improve it in future as much as i can. Hopefully i will add use the provider and manage state with it.
// Also i will try to fix other small stuffs and organizing issues. 
//If anyone wants to help me. I'd much  appreciate it.
// Thank you. 
//-mostafij.






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
