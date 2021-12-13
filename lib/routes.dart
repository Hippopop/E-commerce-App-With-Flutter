import 'package:ecommerce_app/Interface/homepage.dart';
import 'package:flutter/material.dart';
import 'Interface/login.dart';


final Map<String,WidgetBuilder> routes = {
LogInPage.route:(context) => LogInPage(),
HomePage.route:(context) => HomePage(),
};