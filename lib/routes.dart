import 'package:ecommerce_app/Interface/cart.dart';
import 'package:ecommerce_app/Interface/favorites.dart';
import 'package:ecommerce_app/Interface/homepage.dart';
import 'package:ecommerce_app/Interface/product_adder.dart';
import 'package:ecommerce_app/Interface/productspage.dart';
import 'package:ecommerce_app/Interface/registration.dart';
import 'package:ecommerce_app/Interface/user_page.dart';
import 'package:flutter/material.dart';
import 'Interface/login.dart';
import 'Interface/productview.dart';


final Map<String,WidgetBuilder> routes = {
LogInPage.route:(context) => const LogInPage(),
HomePage.route:(context) => const HomePage(),
CartPage.route: (context) => const CartPage(),
ProductsPage.route: (context) => const ProductsPage(),
RegistrationForm.route: (context) => const RegistrationForm(),
FavoritesPage.route: (context) => const FavoritesPage(),
UserPage.route: (context) => const UserPage(),
ProductAdder.route: (context) => const ProductAdder(),
};



