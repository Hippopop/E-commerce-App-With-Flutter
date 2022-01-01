import 'package:ecommerce_app/Modules/productmodules.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ShopState with ChangeNotifier{
  List<ProductInfo> allProducts = [];
  addProduct (ProductInfo product) {
    allProducts.add(product);
    notifyListeners();
  }
}