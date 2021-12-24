import 'package:ecommerce_app/Modules/productmodules.dart';
import 'package:ecommerce_app/Utils/bottom_navigation.dart';
import 'package:ecommerce_app/Utils/pages.dart';
import 'package:ecommerce_app/Utils/product_container.dart';
import 'package:ecommerce_app/Utils/utilities.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'cart.dart';


class ProductsPage extends StatefulWidget {
  static const route = "lib/Interface/productspage.dart";
  const ProductsPage({Key? key}) : super(key: key);

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
Pages current = Pages.store;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          Expanded(
              flex: 9225,
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    collapsedHeight: 80,
                    title: Text("All Products", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                    actions: [
                     /* DropdownButton(items: listist.map((e) {

                        return DropdownMenuItem(
                            value: e,
                            child: Text(e));
                      }).toList(), onChanged: (String? newValue){
                        dropDownValue = newValue!;
                      })*/
/*                        Container(
                        margin: EdgeInsets.symmetric(horizontal: 12),
                        width: 100,
                        height: 20,
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
                      )*/
                    ],



                    //pinned: true,
                    floating: true,
                    backgroundColor: Colors.transparent,
                    automaticallyImplyLeading: false,
                    expandedHeight: 150,
                    flexibleSpace: FlexibleSpaceBar(
                      collapseMode: CollapseMode.pin,

                      background: Container(
                        height: 360,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          gradient: baseGrad,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: SafeArea(
                          child: Center(child: Column(
                            children: [
                              SizedBox(height: 80,),
                              TextField(
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
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  contentPadding: EdgeInsets.all(10),
                                  hintText: "Search",
                                  hintStyle: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                  ),
                                ),
                              )
                            ],
                          )),
                        ),
                      ),
                    ),),
                  SliverPadding(

                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    sliver: SliverGrid.count(
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                      children: productList.map((product) {
                        return ProductContainer(product: product);

                      }).toList(),),
                  )
                ],
              )),
          Expanded(
              flex: 875,
              child: cBottomNavigationBar(height: height, current: current),)
        ],
      ),
    );
  }
}




/*

Column(
children: [
Expanded(
flex: 15,
child: Stack(
children: [
Container(
width: double.infinity,
decoration: BoxDecoration(
gradient: baseGrad,
borderRadius: BorderRadius.only(
bottomRight: Radius.circular(20),
bottomLeft: Radius.circular(20),
)
),
),
Container(
margin: EdgeInsets.symmetric(horizontal: 20),
child: SafeArea(
child: Row(
children: [
Text(
"SHOPIN",
style: TextStyle(
letterSpacing: 1.5,
fontWeight: FontWeight.bold,
color: Colors.white,
fontSize: 2,
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
),
)
],
),),
Expanded(
flex: 85,
child: Container(),),
],
)
*/





/* Expanded(
              flex: 92,
              child: Container(),),
            Expanded(
              flex: 8,
              child:  Container(
                height: height * 0.120,
                padding: EdgeInsets.symmetric(
                    horizontal: height * 0.02200, vertical: 0),
                //width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 6,
                              child: Icon(
                                Icons.home_outlined,
                                size: 28,
                                color: Colors.grey,
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Text(
                                  "Home",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                )),
                            Spacer(
                              flex: 1,
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 6,
                              child: Icon(
                                Icons.feed_outlined,
                                size: 28,
                                color: Colors.grey,
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Text(
                                  "Feed",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                )),
                            Spacer(
                              flex: 1,
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, CartPage.route);
                      },
                      child: Container(
                        margin: EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 6,
                              child: Icon(
                                Icons.shopping_cart_outlined,
                                size: 28,
                                color: Colors.grey,
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Text(
                                  "Cart",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                )),
                            Spacer(
                              flex: 1,
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 6,
                              child: Stack(
                                children: [
                                  Icon(
                                    Icons.message_outlined,
                                    size: 26,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Text(
                                  "Message",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                )),
                            Spacer(
                              flex: 1,
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        //width: 50,
                        margin: EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 6,
                              child: Stack(
                                clipBehavior: Clip.hardEdge,
                                children: [
                                  Icon(
                                    Icons.perm_identity_rounded,
                                    size: 28,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Text(
                                  "User",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                )),
                            Spacer(
                              flex: 1,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),),*/