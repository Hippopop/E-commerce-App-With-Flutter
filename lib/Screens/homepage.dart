import 'package:ecommerce_app/Modules/shop_files.dart';
import 'package:ecommerce_app/Modules/user_files.dart';
import 'package:ecommerce_app/Screens/productspage.dart';
import 'package:ecommerce_app/Modules/productmodules.dart';
import 'package:ecommerce_app/Screens/Widgets/bottom_navigation.dart';
import 'package:ecommerce_app/Utils/pages.dart';
import 'package:ecommerce_app/Screens/Widgets/product_container.dart';
import 'package:ecommerce_app/Utils/utilities.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'cart.dart';

class HomePage extends StatefulWidget {
  static final route = "/Interface/homepage";
  HomePage({Key? key}) : super(key: key);

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
    //ShopState shop = Provider.of<ShopState>(context, listen: true);
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                      child: SizedBox(
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
                                  items: List.from(Provider.of<ShopState>(
                                              context,
                                              listen: false)
                                          .allProducts
                                          .sublist(0, 5))
                                      .map(
                                        (product) => _CarouselView(product: product,),
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
                                      count: 5,
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
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          // color: Colors.deepPurple,
                          color: Color(0xffff0eafc),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.category_rounded,
                          color: Color(0xfff8141ff),
                          size: 32,
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
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Color(0xffff0eafc),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.compare,
                          color: Color(0xfffa25eff),
                          size: 32,
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
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Color(0xffff5e6f8),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.emoji_events_rounded,
                          color: Color(0xffb225d0),
                          size: 32,
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
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Color(0xffffceeea),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.local_fire_department_rounded,
                          color: Colors.deepOrange,
                          size: 32,
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
                                onPressed: () {
                                  /*Provider.of<ShopState>(context, listen: false)
                                      .addProduct(ProductInfo(
                                          id: 9,
                                          name: "Mockup Shoes ",
                                          price: 550,
                                          description:
                                              "It's just a mockup product. But you can add as you wish. Just add to a product to the product list. And it will instantly add as a new product. Have fun.",
                                          images: [
                                        "https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHByb2R1Y3R8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
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
                                      ]));*/
                                  Navigator.pushReplacementNamed(
                                      context, ProductsPage.route);
                                },
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
                        child: Consumer<ShopState>(
                          builder: (context, shop, _) => ListView.builder(
                            //reverse: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: shop.allProducts.length,
                            itemBuilder: (context, index) {
                              shop.allProducts[index].id = index;
                              return ProductContainer(
                                product:
                                    List.from(shop.allProducts.reversed)[index],
                                current: current,
                              );
                            },
                          ),
                        ),
                      )),
                  Expanded(
                    flex: 6,
                    child:
                        cBottomNavigationBar(height: height, current: current),
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

class _CarouselView extends StatelessWidget {
  const _CarouselView({
    Key? key,
    required this.product,
  }) : super(key: key);
  final ProductInfo product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 60,
          child: Container(
            margin: EdgeInsets.all(8),
            width: double.infinity,
            height: double.infinity,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.network(
              product.images[0],
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container();
              },
            ),
          ),
        ),
        Expanded(
          flex: 40,
          child: Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.only(bottom: 8, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(
                  flex: 1,
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Introducing",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        product.name,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0, top: 8),
                      child: Consumer<UserProducts>(
                        builder: (context, userProducts, _) => ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          onPressed: () {
                            if (userProducts.cartList.contains(product)) {
                              Navigator.pushNamed(context, CartPage.route);
                            } else {
                              userProducts.addToCart(product);
                              Navigator.pushNamed(context, CartPage.route);
                            }
                            // if (product
                            //     .onCart) {
                            //   Navigator.pushNamed(
                            //       context,
                            //       CartPage
                            //           .route);
                            // } else {
                            //   setState(() {
                            //     product.onCart =
                            //         true;
                            //     product.cartCount =
                            //         1;
                            //     cart.add(
                            //         product);
                            //   });
                            //   navState
                            //       .setState(
                            //           () {});
                            //   Navigator.pushNamed(
                            //       context,
                            //       CartPage
                            //           .route);
                            // }
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(8)),
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                                (userProducts.cartList.contains(product))
                                    ? "On Cart"
                                    : "Buy Now",
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
