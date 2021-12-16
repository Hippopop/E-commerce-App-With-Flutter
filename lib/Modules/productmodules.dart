import 'package:flutter/material.dart';

class ProductInfo {
  final int id;
  final String name;
  final int price;
  final String description;
  final List<String> images;
  final List<String> sizes;

  ProductInfo(
      {required this.id,
      required this.name,
      required this.price,
      required this.description,
      required this.images,
      required this.sizes});

  int get getId => id;
  String get getName => name;
  int get getPrice => price;
  String get getDesc => description;
  List<String> get getImgs => images;
  List<String> get getSizes => sizes;
}

List<ProductInfo> productList = [
  ProductInfo(
      id: 01,
      name: "Pure Bata",
      price: 120,
      description: "it's nice",
      images: [
        "https://images.unsplash.com/photo-1638911220618-92c8650d2dd6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDQ3fFM0TUtMQXNCQjc0fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
        "https://images.unsplash.com/photo-1637876675000-c910d3fb3c78?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDEwOHxTNE1LTEFzQkI3NHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
        "https://images.unsplash.com/photo-1566401912988-6a744e56598b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDU0fFM0TUtMQXNCQjc0fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"
      ],
      sizes: [
        "7.5",
        "8.5",
        "8.5",
        "8.5",
        "8.5",
        "8.5",

        "XXL"
      ]),
  ProductInfo(
      id: 02,
      name: "Pure Bata",
      price: 120,
      description: "it's nice",
      images: [
        "https://images.unsplash.com/photo-1566401912988-6a744e56598b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDU0fFM0TUtMQXNCQjc0fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
        "https://images.unsplash.com/photo-1637876675000-c910d3fb3c78?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDEwOHxTNE1LTEFzQkI3NHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
        "https://images.unsplash.com/photo-1638911220618-92c8650d2dd6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDQ3fFM0TUtMQXNCQjc0fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"
      ],
      sizes: [
        "7.5",
        "8.5"
      ]),
  ProductInfo(
      id: 05,
      name: "Pure Bata",
      price: 120,
      description: "it's nice",
      images: [
        "https://images.unsplash.com/photo-1566401912988-6a744e56598b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDU0fFM0TUtMQXNCQjc0fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
        "https://images.unsplash.com/photo-1637876675000-c910d3fb3c78?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDEwOHxTNE1LTEFzQkI3NHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
        "https://images.unsplash.com/photo-1638911220618-92c8650d2dd6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDQ3fFM0TUtMQXNCQjc0fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"
      ],
      sizes: [
        "7.5",
        "8.5",
        "XL"
      ]),
];
