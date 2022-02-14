import 'package:ecommerce_app/Modules/productmodules.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class UserProducts with ChangeNotifier {
  List<ProductInfo> favoriteList = [];
  List<ProductInfo> cartList = [];
  List<ProductInfo> ordered = [];
  double cartTotal = 0;
  addToCart(ProductInfo product) {
    if (product.onCart) {
      product.cartCount++;
    } else {
      product.onCart = true;
      cartList.add(product);
      product.cartCount++;
    }
    totalFixer();
    notifyListeners();
  }

  reduceCart(ProductInfo product) {
    product.cartCount--;
    if (product.cartCount == 0) {
      product.onCart = false;
      cartList.remove(product);
    }
    totalFixer();
    notifyListeners();
  }

  productFav(ProductInfo product) {
    product.isFav = !product.isFav;
    if (product.isFav) {
      favoriteList.add(product);
    } else {
      favoriteList.remove(product);
    }
    notifyListeners();
  }

  totalFixer() {
    cartTotal = 0;
    cartList.forEach((element) {
      cartTotal = cartTotal + element.price * element.cartCount;
    });
    
  }

  onOrder() {
    ordered.addAll(cartList);
    cartList.clear();
    totalFixer();
    notifyListeners();
  }
}
