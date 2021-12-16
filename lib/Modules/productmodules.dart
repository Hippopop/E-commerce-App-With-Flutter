import 'package:flutter/material.dart';

class ProductInfo {
  String name;
  int price;
  String description;
  List<String> images;
  List<String> sizes;

  ProductInfo(
      {required this.name,
      required this.price,
      required this.description,
      required this.images,
      required this.sizes});
}

List<ProductInfo> productList = [];
