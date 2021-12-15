import 'package:ecommerce_app/Interface/homepage.dart';
import 'package:flutter/material.dart';
import 'Interface/login.dart';
import 'Interface/productview.dart';


final Map<String,WidgetBuilder> routes = {
LogInPage.route:(context) => const LogInPage(),
HomePage.route:(context) => const HomePage(),
ProductViewPage.route: (context) => const ProductViewPage(),
};