import 'package:ecommerce_app/Utils/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';




class ProductViewPage extends StatefulWidget {
  static final route = "lib\Interface\productview.dart";
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
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Stack(
                fit: StackFit.expand,
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 0,
                    bottom: 80,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: height * 0.20,
                      decoration: BoxDecoration(
                          gradient: baseGrad,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          )),
                    ),
                  ),
                  Positioned(
                      top: 20,
                      child: SafeArea(
                        child: Card(
                          elevation: 8,
                          margin:
                              EdgeInsets.symmetric(horizontal: height * 0100),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          child: Container(
                            height: height * 0.320,
                            width: width * 0.900,
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 8,
                                    child: Container(
                                      margin: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      width: double.infinity,
                                      clipBehavior: Clip.hardEdge,
                                      child: Hero(
                                                tag: 'hero',
                                        child: Image.network(
                                          "https://images.unsplash.com/photo-1637208698772-9b4d56d2d3a1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDExNHxTNE1LTEFzQkI3NHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    )),
                                Expanded(
                                    flex: 2,
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        left: 8,
                                        right: 8,
                                        bottom: 8,
                                      ),
                                      width: double.infinity,
                                      //color: Colors.green,
                                      child: Row(
                                        children: [

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
              flex: 6,
              child: Container(
                width: double.infinity,
                color: Colors.amber,
              ),
            )
          ],
        ),
      ),
    );
  }
}
