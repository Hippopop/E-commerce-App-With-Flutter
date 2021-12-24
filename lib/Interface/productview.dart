import 'dart:math';

import 'package:ecommerce_app/Interface/homepage.dart';
import 'package:ecommerce_app/Modules/productmodules.dart';
import 'package:ecommerce_app/Utils/grad_button.dart';
import 'package:ecommerce_app/Utils/utilities.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductViewPage extends StatefulWidget {
  ProductInfo product;
  ProductViewPage({Key? key, required this.product}) : super(key: key);

  @override
  _ProductViewPageState createState() => _ProductViewPageState();
}

class _ProductViewPageState extends State<ProductViewPage> {
  int serial = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final ProductInfo product = widget.product;
    return WillPopScope(
      onWillPop: (){
        Navigator.pushNamed(context, HomePage.route);
        //Navigator.popAndPushNamed(context, HomePage.route);
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Stack(
                        fit: StackFit.expand,
                        clipBehavior: Clip.none,
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            top: 0,
                            bottom: 20,
                            left: 0,
                            right: 0,
                            child: Container(
                              height: height * 0.350,
                              decoration: BoxDecoration(
                                  gradient: baseGrad,
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(25),
                                    bottomRight: const Radius.circular(25),
                                  )),
                            ),
                          ),
                          Positioned(
                              top: 20,
                              child: SafeArea(
                                child: Card(
                                  color: const Color(0xffff5f5f5),
                                  elevation: 3,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: height * 0100),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25)),
                                  child: Container(
                                    height: height * 0.300,
                                    width: width * 0.900,
                                    child: Column(
                                      children: [
                                        Expanded(
                                            flex: 9,
                                            child: Hero(
                                              tag: product.id,
                                              child: Container(
                                                margin: const EdgeInsets.all(8),
                                                decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                                width: double.infinity,
                                                clipBehavior: Clip.hardEdge,
                                                child: CarouselSlider(
                                                  options: CarouselOptions(
                                                    onPageChanged:
                                                        (index, reason) {
                                                      setState(() {
                                                        serial = index;
                                                      });
                                                    },
                                                    viewportFraction: 1,
                                                    enlargeCenterPage: true,
                                                  ),
                                                  items: product.images
                                                      .map(
                                                        (image) => Container(
                                                          width: double.infinity,
                                                          child: Image.network(
                                                            image,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      )
                                                      .toList(),
                                                ),
                                              ),
                                            )),
                                        Expanded(
                                            flex: 1,
                                            child: Container(
                                              margin: const EdgeInsets.only(
                                                left: 12,
                                                right: 12,
                                                bottom: 8,
                                              ),
                                              width: double.infinity,
                                              //color: Colors.green,
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    flex: 4,
                                                    child: Container(),
                                                  ),
                                                  Expanded(
                                                    flex: 8,
                                                    child: Container(
                                                      padding: EdgeInsets.all(5),
                                                      alignment: Alignment.center,
                                                      //color: Colors.amber,
                                                      child:
                                                          AnimatedSmoothIndicator(
                                                        onDotClicked: (index) =>
                                                            _controller
                                                                .animateToPage(
                                                                    index),
                                                        activeIndex: serial,
                                                        count:
                                                            product.images.length,
                                                        effect: JumpingDotEffect(
                                                          spacing: 5,
                                                          dotWidth: 8,
                                                          dotHeight: 8,
                                                          dotColor: Colors.grey,
                                                          activeDotColor:
                                                              Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 4,
                                                    child: Container(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Text("${serial + 1}" +
                                                          r"/" +
                                                          "${product.images.length}"),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: width * 0.0500, vertical: 8),
                  //color: Colors.green,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Row(
                          children: [
                            Text(
                              r"$" + product.price.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  product.isFav = !product.isFav;
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.symmetric(horizontal: 8),
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: const Color(0xffff5f5f5),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: (product.isFav)
                                    ? Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                        size: 18,
                                      )
                                    : Icon(
                                        Icons.favorite_border_outlined,
                                        size: 18,
                                      ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: const Color(0xffff5f5f5),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.share_outlined,
                                  size: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            product.name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black54),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  //color: Colors.amber,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: width * 0.0500),
                  margin: const EdgeInsets.only(bottom: 8),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 26,
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: product.images
                                .map((link) => colorShowContainer(context, link))
                                .toList(),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 36,
                        child: Container(
                          margin: const EdgeInsets.only(top: 12, bottom: 5),
                          child: Column(
                            children: [
                              const Expanded(
                                flex: 2,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Select Size",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black54),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 8,
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(
                                    top: 8,
                                  ),
                                  child: Wrap(
                                    clipBehavior: Clip.hardEdge,
                                    spacing: 10,
                                    runSpacing: 8,
                                    direction: Axis.horizontal,
                                    alignment: WrapAlignment.start,
                                    children: product.sizes
                                        .map((size) =>
                                            sizeShowingBox(context, size))
                                        .toList(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 24,
                        child: Container(
                          margin: EdgeInsets.only(top: 12),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Description",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black54),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 6,
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(
                                    top: 8,
                                  ),
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        product.description,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 14,
                        child: Container(
                          child: Row(
                            children: [
                              Expanded(
                                flex: 15,
                                child: GradButton(text: "Add To Cart", onPress: (){}, color: Colors.grey[400],)
                              ),
                              Spacer(
                                flex: 1,
                              ),
                              Expanded(
                                  flex: 15,
                                  child: GradButton(
                                    height: 80,
                                    width: double.infinity,
                                    text: "Buy Now",
                                    onPress: () {},
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
