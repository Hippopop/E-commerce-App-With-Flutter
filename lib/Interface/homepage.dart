import 'package:ecommerce_app/Utils/utilities.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'productview.dart';
import 'package:flutter/scheduler.dart';

class HomePage extends StatefulWidget {
  static final route = "/Interface/homepage";
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  top: 0,
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
                      elevation: 30,
                      margin: EdgeInsets.symmetric(horizontal: height * 0100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      child: Container(
                        height: height * 0.240,
                        width: width * 0.90,
                      ),
                    ))
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: width * 0.050),
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
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.games,
                          color: Colors.deepOrange,
                          size: 24,
                        ),
                      ),
                      Text(
                        "Games",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.games,
                          color: Colors.deepOrange,
                          size: 24,
                        ),
                      ),
                      Text(
                        "Games",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.games,
                          color: Colors.deepOrange,
                          size: 24,
                        ),
                      ),
                      Text(
                        "Games",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.games,
                          color: Colors.deepOrange,
                          size: 24,
                        ),
                      ),
                      Text(
                        "Games",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.only(top: 22),
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  color: Color(0x555DFE5E3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  )),
              child: Column(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        height: height,
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
                                      "View all",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ))),
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 7,
                      child: Container(
                        margin: EdgeInsets.only(
                          top: 5,
                          left: height * 0.025,
                          right: height * 0.025,
                        ),
                        width: 390,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 220,
                              width: 165,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                      flex: 6,
                                      child: Stack(
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            clipBehavior: Clip.hardEdge,
                                            margin: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              color: Color(0x555DFE5E3),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            child: Image.network(
                                              "https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDI4NXxTNE1LTEFzQkI3NHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Positioned(
                                              top: 12,
                                              right: 12,
                                              child: Icon(
                                                Icons.favorite,
                                                color: Colors.red,
                                              ))
                                        ],
                                      )),
                                  Expanded(
                                      flex: 4,
                                      child: Container(
                                        margin: EdgeInsets.only(
                                          top: 5,
                                          bottom: 8,
                                          left: 8,
                                          right: 8,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Wrist Watch Gshock",
                                              style: TextStyle(),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                color: Color(0x555DFE5E3),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Text(
                                                " 7 Colours",
                                                style: TextStyle(fontSize: 12),
                                              ),
                                            ),
                                            Container(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    r" $120",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(5),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        border: Border.all(
                                                          width: 0.8,
                                                          color: Colors.black,
                                                        )),
                                                    child: Icon(
                                                      Icons.add,
                                                      size: 16,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              height: 220,
                              width: 165,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                      flex: 6,
                                      child: Stack(
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            clipBehavior: Clip.hardEdge,
                                            margin: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              color: Color(0x555DFE5E3),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            child: Hero(
                                              tag: 'hero',
                                              child: Image.network(
                                                "https://images.unsplash.com/photo-1637208698772-9b4d56d2d3a1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDExNHxTNE1LTEFzQkI3NHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              top: 12,
                                              right: 12,
                                              child: Icon(
                                                Icons.favorite,
                                                color: Colors.red,
                                              ))
                                        ],
                                      )),
                                  Expanded(
                                      flex: 4,
                                      child: Container(
                                        margin: EdgeInsets.only(
                                          top: 5,
                                          bottom: 8,
                                          left: 8,
                                          right: 8,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Wrist Watch Gshock",
                                              style: TextStyle(),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                color: Color(0x555DFE5E3),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Text(
                                                " 7 Colours",
                                                style: TextStyle(fontSize: 12),
                                              ),
                                            ),
                                            Container(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    r" $120",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(5),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        border: Border.all(
                                                          width: 0.8,
                                                          color: Colors.black,
                                                        )),
                                                    child: Icon(
                                                      Icons.add,
                                                      size: 16,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: height * 0.10,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(18),
                          topRight: Radius.circular(20),
                        ),
                      ),
                    ),
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




