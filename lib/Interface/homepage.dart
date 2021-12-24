import 'package:ecommerce_app/Interface/cart.dart';
import 'package:ecommerce_app/Interface/favorites.dart';
import 'package:ecommerce_app/Interface/productspage.dart';
import 'package:ecommerce_app/Interface/user_page.dart';
import 'package:ecommerce_app/Modules/productmodules.dart';
import 'package:ecommerce_app/Utils/bottom_navigation.dart';
import 'package:ecommerce_app/Utils/pages.dart';
import 'package:ecommerce_app/Utils/product_container.dart';
import 'package:ecommerce_app/Utils/utilities.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  static final route = "/Interface/homepage";
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Pages current = Pages.home;
  final CarouselController _controller = CarouselController();
  int serial = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 38,
            child: Stack(
              fit: StackFit.expand,
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 0,
                  bottom: 70,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: height * 0.25,
                    decoration: BoxDecoration(
                        gradient: baseGrad,
                        borderRadius: BorderRadius.only(
                          bottomLeft: const Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        )),
                  ),
                ),
                Positioned(
                  top: 8,
                  child: SafeArea(
                      child: Container(
                    width: width,
                    //clipBehavior: Clip.hardEdge,
                    margin: EdgeInsets.all(16),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "SHOPIN",
                          style: TextStyle(
                            letterSpacing: 1.5,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          width: 135,
                          height: 40,
                          child: TextField(
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              prefixIcon: const Icon(
                                Icons.search,
                                color: Colors.grey,
                                size: 24,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: EdgeInsets.all(10),
                              hintText: "Search",
                              hintStyle: const TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.grey,
                            size: 22,
                          ),
                        ),
                      ],
                    ),
                  )),
                ),
                Positioned(
                    bottom: 20,
                    child: Card(
                      elevation: 5,
                      margin: EdgeInsets.symmetric(horizontal: height * 0100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        height: height * 0.200,
                        width: width * 0.9,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 18,
                              child: Container(
                                width: double.infinity,
                                child: CarouselSlider(
                                  carouselController: _controller,
                                  options: CarouselOptions(
                                    onPageChanged: (index, reason) {
                                      setState(() {
                                        serial = index;
                                      });
                                    },
                                    viewportFraction: 1,
                                    autoPlay: true,
                                  ),
                                  items: productList
                                      .map(
                                        (product) => Row(
                                          children: [
                                            Expanded(
                                              flex: 60,
                                              child: Container(
                                                margin: EdgeInsets.all(8),
                                                width: double.infinity,
                                                height: double.infinity,
                                                clipBehavior: Clip.hardEdge,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                                child: Image.network(
                                                  product.images[0],
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 40,
                                              child: Container(
                                                alignment: Alignment.centerLeft,
                                                margin: EdgeInsets.all(8),
                                                padding: EdgeInsets.only(
                                                    bottom: 8, top: 5),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Spacer(
                                                      flex: 1,
                                                    ),
                                                    Expanded(
                                                      flex: 4,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        children: [
                                                          Text(
                                                            "Introducing",
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          ),
                                                          Text(
                                                            product.name,
                                                            style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                        flex: 3,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  right: 16.0,
                                                                  top: 8),
                                                          child: ElevatedButton(
                                                            style: ElevatedButton.styleFrom(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(0),
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8))),
                                                            onPressed: () {},
                                                            child: Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              width: double
                                                                  .infinity,
                                                              height: double
                                                                  .infinity,
                                                              decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .black,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8)),
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(3.0),
                                                              child: Text(
                                                                  "Buy Now",
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                  )),
                                                            ),
                                                          ),
                                                        ))
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                      .toList(),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                padding: EdgeInsets.only(bottom: 7),
                                //color: Colors.amber,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AnimatedSmoothIndicator(
                                      onDotClicked: (index) =>
                                          _controller.animateToPage(index),
                                      activeIndex: serial,
                                      count: productList.length,
                                      effect: JumpingDotEffect(
                                        spacing: 5,
                                        dotWidth: 8,
                                        dotHeight: 8,
                                        dotColor: Colors.grey,
                                        activeDotColor: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ),
          Expanded(
            flex: 12,
            child: Container(
              margin: EdgeInsets.only(
                  left: width * 0.050, right: width * 0.050, top: 10),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          // color: Colors.deepPurple,
                          color: Color(0xffff0eafc),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: FaIcon(
                          FontAwesomeIcons.calendarAlt,
                          color: Color(0xfff8141ff),
                          size: 26,
                        ),
                      ),
                      Text(
                        "Category",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Color(0xffff0eafc),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: FaIcon(
                          FontAwesomeIcons.balanceScale,
                          color: Color(0xfffa25eff),
                          size: 26,
                        ),
                      ),
                      Text(
                        "Compare",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Color(0xffff5e6f8),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: FaIcon(
                          FontAwesomeIcons.gift,
                          color: Color(0xffb225d0),
                          size: 26,
                        ),
                      ),
                      Text(
                        "Sales Event",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Color(0xffffceeea),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: FaIcon(
                          FontAwesomeIcons.chessQueen,
                          color: Colors.deepOrange,
                          size: 26,
                        ),
                      ),
                      Text(
                        "Offer",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 50,
            child: Container(
              padding: EdgeInsets.only(top: 20),
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  color: Color(0x555DFE5E3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Column(
                children: [
                  Expanded(
                      flex: 3,
                      child: Container(
                        height: double.infinity,
                        // color: Colors.amber,
                        margin: EdgeInsets.symmetric(
                          horizontal: width * 0.050,
                          //vertical: 5,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "New Arrivals",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.all(0),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                onPressed: () {},
                                child: Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      gradient: baseGrad,
                                    ),
                                    child: Text(
                                      "View All",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ))),
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 22,
                      child: Container(
                        margin: EdgeInsets.only(
                          top: height * 0.015,
                          left: height * 0.025,
                          right: height * 0.025,
                          bottom: height * 0.020,
                        ),
                        width: 390,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          //mainAxisAlignment: MainAxisAlignment.spaceAround,
                          // children: productList
                          //     .map((product) =>
                          //         productContainer(context, product))
                          //     .toList(),
                          itemCount: productList.length,
                          itemBuilder: (context, index) {
                            productList[index].id = index;
                            return ProductContainer(
                                product: productList[index]);
                          },
                        ),
                      )),
                  Expanded(
                    flex: 6,
                    child: cBottomNavigationBar(height: height, current: current),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
