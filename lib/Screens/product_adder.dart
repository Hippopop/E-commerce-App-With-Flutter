import 'package:ecommerce_app/Screens/homepage.dart';
import 'package:ecommerce_app/Modules/productmodules.dart';
import 'package:ecommerce_app/Screens/Widgets/grad_button.dart';
import 'package:ecommerce_app/Utils/utilities.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductAdder extends StatefulWidget {
  static final route = "/Interface/product_adder";

  const ProductAdder({Key? key}) : super(key: key);

  @override
  _ProductAdderState createState() => _ProductAdderState();
}

class _ProductAdderState extends State<ProductAdder> {
  final nameController = TextEditingController();
  final descController = TextEditingController();
  final priceController = TextEditingController();
  final idController = TextEditingController();
  final imgController = TextEditingController();
  final sizeController = TextEditingController();

  List<String> imgList = [];
  List<String> sizeList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController.addListener(() {
      setState(() {});
    });
    descController.addListener(() {
      setState(() {});
    });
    priceController.addListener(() {
      setState(() {});
    });
    idController.addListener(() {
      setState(() {});
    });
    imgController.addListener(() {
      setState(() {});
    });
    sizeController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 8),
            padding: EdgeInsets.only(
                left: width * 0.0200,
                right: width * 0.02000,
                top: 35,
                bottom: 12),
            alignment: Alignment.centerLeft,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: baseGrad,
                color: bgColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                )),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Welcome user!",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      "Here you can enlist your product for sale.",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(bottom: 8),
              padding:
                  EdgeInsets.only(left: width * 0.0200, right: width * 0.02000),
              child: Column(
                children: [
                  Expanded(
                    flex: 10,
                    child: Card(
                      color: bgColor,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        height: double.infinity,
                        child: TextField(
                          controller: nameController,
                          decoration: inStyle.copyWith(
                              contentPadding: EdgeInsets.all(0),
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.drive_file_rename_outline,
                                color: Colors.deepOrange[500],
                              ),
                              hintText: "Name"),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 14,
                    child: Card(
                      color: bgColor,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                        height: double.infinity,
                        child: TextField(
                          controller: descController,
                          maxLines: 4,
                          minLines: 1,
                          //expands: true,
                          decoration: inStyle.copyWith(
                              contentPadding: EdgeInsets.all(0),
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.text_snippet_rounded,
                                color: Color(0xfff8141ff),
                              ),
                              hintText: "Description"),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                              child: Card(
                            color: bgColor,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              height: double.infinity,
                              child: TextField(
                                controller: priceController,
                                decoration: inStyle.copyWith(
                                    contentPadding: EdgeInsets.all(0),
                                    border: OutlineInputBorder(),
                                    prefixIcon:
                                        Icon(Icons.monetization_on_outlined,
                                          color: Color(0xfffa25eff),
                                        ),
                                    hintText: "Price"),
                              ),
                            ),
                          )),
                          Expanded(
                              child: Card(
                            color: bgColor,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              height: double.infinity,
                              child: TextField(
                                controller: idController,
                                decoration: inStyle.copyWith(
                                    contentPadding: EdgeInsets.all(0),
                                    border: OutlineInputBorder(),
                                    prefixIcon:
                                        Icon(Icons.confirmation_num_rounded,
                                          color: Color(0xffb225d0),
                                        ),
                                    hintText: "Product ID"),
                              ),
                            ),
                          )),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 32,
                    child: Card(
                      color: bgColor,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        height: double.infinity,
                        child: Column(
                          children: [
                            Expanded(
                                flex: 5,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                      "Add image for every color varient :"),
                                )),
                            Expanded(
                                flex: 17,
                                child: ListView(
                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                  scrollDirection: Axis.horizontal,
                                  children: imgList
                                      .map((link) => Container(
                                            width: 80,
                                            margin: EdgeInsets.all(8),
                                            clipBehavior: Clip.hardEdge,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: Image.network(
                                              link,
                                              fit: BoxFit.cover,
                                            ),
                                          ))
                                      .toList(),
                                )),
                            Expanded(
                              flex: 10,
                              child: TextField(
                                controller: imgController,
                                decoration: inStyle.copyWith(
                                    contentPadding: EdgeInsets.all(0),
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.image_rounded,
                                      color: Color(0xfffa25eff),
                                    ),
                                    suffixIcon: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            imgList.add(imgController.text);
                                            imgController.clear();
                                          });
                                        },
                                        child: Icon(Icons.add,
                                          color: Color(0xffb225d0),
                                        )),
                                    hintText: "Image"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 24,
                    child: Card(
                      color: bgColor,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        height: double.infinity,
                        child: Column(
                          children: [
                            Expanded(
                                flex: 5,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text("Add all the available sizes :"),
                                )),
                            Expanded(
                                flex: 17,
                                child: ListView(
                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                  scrollDirection: Axis.horizontal,
                                  children: sizeList
                                      .map((size) => Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5.0),
                                            child: CircleAvatar(
                                              backgroundColor: Colors.grey[300],
                                              child: Text(
                                                size,
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ))
                                      .toList(),
                                )),
                            Expanded(
                              flex: 10,
                              child: TextField(
                                controller: sizeController,
                                decoration: inStyle.copyWith(
                                    contentPadding: EdgeInsets.all(0),
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.tag,
                                      color: Color(0xfff8141ff),                                    ),
                                    suffixIcon: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            sizeList.add(sizeController.text);
                                            sizeController.clear();
                                          });
                                        },
                                        child: Icon(Icons.add,
                                          color: Colors.deepOrange[500],
                                        )),
                                    hintText: "Sizes"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: GradButton(
                        text: "Add To Shop",
                        onPress: () {
                          setState(() {
                            productList.add(ProductInfo(
                                name: nameController.text,
                                price: int.parse(priceController.text),
                                description: descController.text,
                                images: imgList,
                                sizes: sizeList));
                          });
                          Navigator.pushNamed(context, HomePage.route);
                        }),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
