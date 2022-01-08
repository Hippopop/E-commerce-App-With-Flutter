import 'package:ecommerce_app/Modules/shop_files.dart';
import 'package:ecommerce_app/Modules/user_files.dart';
import 'package:ecommerce_app/Screens/splashscreen.dart';
import 'package:ecommerce_app/Controllers/User_storage.dart';
import 'package:ecommerce_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await DataHandler.start();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ShopState()),
      ChangeNotifierProvider(create: (context) => UserProducts()),
    ],
    child: const MyApp()));
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
