
class ProductInfo {
   int id;
  final String name;
  final int price;
  final String description;
  final List<String> images;
  final List<String> sizes;
   bool isFav = false;
   int onCart = 0;
   int onStock = 100;

  ProductInfo(
      {this.id = 000,
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

List<ProductInfo> favoriteProducts = [];
List<ProductInfo> cart = [];

List<ProductInfo> productList = [
  ProductInfo(
      name: "Mockup Shoes ",
      price: 150,
      description:
          "It's just a mockup product. But you can add as you wish. Just add to a product to the product list. And it will instantly add as a new product. Have fun.",
      images: [
        "https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fHNob2VzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
        "https://images.unsplash.com/photo-1587563871167-1ee9c731aefb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzF8fHNob2VzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
        "https://images.unsplash.com/flagged/photo-1556637640-2c80d3201be8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzR8fHNob2VzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"
      ],
      sizes: [
        "7",
        "7.5",
        "8",
        "8.5",
        "9",
        "9.5",
        "10",
        "10.5",
        "11",
        "11.5"
      ]),
  ProductInfo(
      name: "Mockup Dress",
      price: 150,
      description:
          "You can add at least 10 different size as option. And as many images as you want as different color choices. It can handle it easily.",
      images: [
        "https://images.unsplash.com/photo-1618932260643-eee4a2f652a6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGRyZXNzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
        "https://images.unsplash.com/photo-1542295669297-4d352b042bca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGRyZXNzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
        "https://images.unsplash.com/photo-1570382667048-23b581258f6a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGRyZXNzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
        "https://images.unsplash.com/photo-1494578379344-d6c710782a3d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGRyZXNzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
        "https://images.unsplash.com/photo-1572804013309-59a88b7e92f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZHJlc3N8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      ],
      sizes: [
        "0",
        "XS",
        "S",
        "M",
        "L",
        "XL",
        "XXL",
        "XXL",
      ]),
];
