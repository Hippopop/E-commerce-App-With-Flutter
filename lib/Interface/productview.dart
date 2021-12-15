import 'package:ecommerce_app/Utils/utilities.dart';
import 'package:flutter/material.dart';

class ProductViewPage extends StatefulWidget {
  static const route = "lib\Interface\productview.dart";
  const ProductViewPage({Key? key}) : super(key: key);

  @override
  _ProductViewPageState createState() => _ProductViewPageState();
}

class _ProductViewPageState extends State<ProductViewPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
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
                                            tag: "Cont",
                                            child: Container(
                                              margin: const EdgeInsets.all(8),
                                              decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                              width: double.infinity,
                                              clipBehavior: Clip.hardEdge,
                                              child: Image.network(
                                                "https://images.unsplash.com/photo-1637208698772-9b4d56d2d3a1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDExNHxTNE1LTEFzQkI3NHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          )),
                                      Expanded(
                                          flex: 1,
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                              left: 8,
                                              right: 8,
                                              bottom: 8,
                                            ),
                                            width: double.infinity,
                                            //color: Colors.green,
                                            child: Row(
                                              children: [],
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
                          const Text(
                            r"$150",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                          const Spacer(),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: const Color(0xffff5f5f5),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Icon(
                              Icons.favorite_border_outlined,
                              size: 18,
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
                    const Expanded(
                      flex: 4,
                      child: const Align(
                        alignment: Alignment.bottomLeft,
                        child: const Text(
                          "Product Name",
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
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                right: 12,
                              ),
                              width: 108,
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Image.network(
                                "https://images.unsplash.com/photo-1600185365926-3a2ce3cdb9eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHNob2VzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                right: 15,
                              ),
                              width: 108,
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Image.network(
                                "https://images.unsplash.com/photo-1600185365926-3a2ce3cdb9eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHNob2VzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                right: 15,
                              ),
                              width: 108,
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Image.network(
                                "https://images.unsplash.com/photo-1600185365926-3a2ce3cdb9eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHNob2VzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
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
                                margin: EdgeInsets.only(
                                  top: 8,
                                ),
                                child: Wrap(
                                  clipBehavior: Clip.hardEdge,
                                  spacing: 8,
                                  runSpacing: 8,
                                  direction: Axis.horizontal,
                                  alignment: WrapAlignment.start,
                                  children: [
                                    Container(
                                      height: 44,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 0.8,
                                          color: Colors.black,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                          child: Text(
                                        "7.5",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                    Container(
                                      height: 44,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 0.8,
                                          color: Colors.black,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                          child: Text(
                                        "7.5",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                    Container(
                                      height: 44,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 0.8,
                                          color: Colors.black,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                          child: Text(
                                        "7.5",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                    Container(
                                      height: 44,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 0.8,
                                          color: Colors.black,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                          child: Text(
                                        "7.5",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                    Container(
                                      height: 44,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 0.8,
                                          color: Colors.black,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                          child: Text(
                                        "7.5",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                    Container(
                                      height: 44,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 0.8,
                                          color: Colors.black,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                          child: Text(
                                        "7.5",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                    Container(
                                      height: 44,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 0.8,
                                          color: Colors.black,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                          child: Text(
                                        "7.5",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                    Container(
                                      height: 44,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 0.8,
                                          color: Colors.black,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                          child: Text(
                                        "7.5",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                    Container(
                                      height: 44,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 0.8,
                                          color: Colors.black,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                          child: Text(
                                        "7.5",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                    Container(
                                      height: 44,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 0.8,
                                          color: Colors.black,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                          child: Text(
                                        "7.5",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
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
                                margin: EdgeInsets.only(
                                  top: 8,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
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
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(0),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                  onPressed: () {},
                                  child: Container(
                                      width: double.infinity,
                                      height: 80,
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xffff0f0f0),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Add To Cart",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ))),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 15,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(0),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                  onPressed: () {},
                                  child: Container(
                                      width: double.infinity,
                                      height: 80,
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        gradient: baseGrad,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Buy Now",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ))),
                            ),
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
    );
  }
}
