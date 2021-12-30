import 'package:ecommerce_app/Screens/cart.dart';
import 'package:ecommerce_app/Screens/favorites.dart';
import 'package:ecommerce_app/Screens/homepage.dart';
import 'package:ecommerce_app/Screens/product_adder.dart';
import 'package:ecommerce_app/Screens/productspage.dart';
import 'package:ecommerce_app/Screens/registration.dart';
import 'package:ecommerce_app/Screens/user_page.dart';
import 'package:flutter/material.dart';
import 'Screens/login.dart';
import 'Screens/productview.dart';
import 'Controllers/User_storage.dart';


final Map<String,WidgetBuilder> routes = {
LogInPage.route:(context) => const LogInPage(),
HomePage.route:(context) => HomePage(),
CartPage.route: (context) => const CartPage(),
ProductsPage.route: (context) => const ProductsPage(),
RegistrationForm.route: (context) => const RegistrationForm(),
FavoritesPage.route: (context) => const FavoritesPage(),
UserPage.route: (context) => const UserPage(),
ProductAdder.route: (context) => const ProductAdder(),
};

 late User currentUser ;
