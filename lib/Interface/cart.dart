
import 'package:ecommerce_app/Utils/grad_button.dart';
import 'package:ecommerce_app/Utils/utilities.dart';
import 'package:flutter/material.dart';


class CartPage extends StatefulWidget {
    static final route = "/Interface/cart";

  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
              flex:18,
              child: Container(
                margin: EdgeInsets.only(bottom: 8),
                padding: EdgeInsets.only(left: height*0.0150, right: height*0.01500, top: 35, bottom: 20),
                alignment: Alignment.centerLeft,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  )
                ),
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Your Cart", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                      Text("You have 2 items on your cart.", style: TextStyle(fontWeight: FontWeight.w500),),
                    ],
                  ),
                ),
              )),
            Expanded(
              flex: 32,
              child: Container(
                //color: Colors.orange,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: height*0.01500, vertical: 8),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                       children: [
                         Expanded(
                           flex: 4,
                           child: Container(
                             margin: EdgeInsets.symmetric(horizontal: 8),
                             clipBehavior: Clip.hardEdge,
                             decoration: BoxDecoration(
                               color: bgColor,
                               borderRadius: BorderRadius.circular(8),
                             ),
                            /* child: Image.network("https://images.unsplash.com/photo-1640058909746-a1c76cd29962?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMDB8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                             fit: BoxFit.cover,
                             ),*/
                           ),
                         ),
                         Expanded(
                           flex: 6,
                           child: Container(
                             padding: EdgeInsets.symmetric(horizontal: 8),
                             alignment: Alignment.centerLeft,
                             child: Column(
                               children: [
                                 Expanded(
                                   flex: 2,
                                   child: Align(
                                       alignment: Alignment.centerLeft,
                                       child: Text("Product Name", style: TextStyle(color: Colors.black54, fontSize: 16, fontWeight: FontWeight.w500),)),),
                                 Expanded(
                                   flex: 4,
                                   child:Align(
                                       alignment: Alignment.centerLeft,
                                       child: Text(r"$150", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),),
                                 Expanded(
                                   flex: 4,
                                   child: Row(
                                     children: [
                                       Expanded(
                                         flex: 1,
                                         child: Container(
                                           margin: EdgeInsets.symmetric(vertical: 3),
                                           height: double.infinity,
                                           width: double.infinity,
                                           decoration: BoxDecoration(
                                             color: bgColor,
                                             borderRadius: BorderRadius.circular(8),

                                           ),
                                           child: Center(child: Text("+", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
                                         ),),
                                       Expanded(
                                         flex: 1,
                                         child:  Container(
                                           margin: EdgeInsets.symmetric(vertical: 3),
                                           height: double.infinity,
                                           width: double.infinity,
                                           decoration: BoxDecoration(
                                             //color: bgColor,
                                             borderRadius: BorderRadius.circular(8),

                                           ),
                                           child: Center(child: Text("1", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),
                                         ),),
                                       Expanded(
                                         flex: 1,
                                         child:  Container(
                                           margin: EdgeInsets.symmetric(vertical: 3),
                                           height: double.infinity,
                                           width: double.infinity,
                                           decoration: BoxDecoration(
                                             color: bgColor,
                                             borderRadius: BorderRadius.circular(8),

                                           ),
                                           child: Center(child: Text("-", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
                                         ),),
                                         Spacer(
                                           flex: 2,
                                         ),
                                     ],
                                   )),
                               ],
                             ),
                           ),
                         )
                       ],
                      ),
                    ),
                    Container(
                      height: 100,
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                       children: [
                         Expanded(
                           flex: 4,
                           child: Container(
                             margin: EdgeInsets.symmetric(horizontal: 8),
                             clipBehavior: Clip.hardEdge,
                             decoration: BoxDecoration(
                               color: bgColor,
                               borderRadius: BorderRadius.circular(8),
                             ),
                            /* child: Image.network("https://images.unsplash.com/photo-1640058909746-a1c76cd29962?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMDB8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                             fit: BoxFit.cover,
                             ),*/
                           ),
                         ),
                         Expanded(
                           flex: 6,
                           child: Container(
                             padding: EdgeInsets.symmetric(horizontal: 8),
                             alignment: Alignment.centerLeft,
                             child: Column(
                               children: [
                                 Expanded(
                                   flex: 2,
                                   child: Align(
                                       alignment: Alignment.centerLeft,
                                       child: Text("Product Name", style: TextStyle(color: Colors.black54, fontSize: 16, fontWeight: FontWeight.w500),)),),
                                 Expanded(
                                   flex: 4,
                                   child:Align(
                                       alignment: Alignment.centerLeft,
                                       child: Text(r"$150", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),),
                                 Expanded(
                                   flex: 4,
                                   child: Row(
                                     children: [
                                       Expanded(
                                         flex: 1,
                                         child: Container(
                                           margin: EdgeInsets.symmetric(vertical: 3),
                                           height: double.infinity,
                                           width: double.infinity,
                                           decoration: BoxDecoration(
                                             color: bgColor,
                                             borderRadius: BorderRadius.circular(8),

                                           ),
                                           child: Center(child: Text("+", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
                                         ),),
                                       Expanded(
                                         flex: 1,
                                         child:  Container(
                                           margin: EdgeInsets.symmetric(vertical: 3),
                                           height: double.infinity,
                                           width: double.infinity,
                                           decoration: BoxDecoration(
                                             //color: bgColor,
                                             borderRadius: BorderRadius.circular(8),

                                           ),
                                           child: Center(child: Text("1", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),
                                         ),),
                                       Expanded(
                                         flex: 1,
                                         child:  Container(
                                           margin: EdgeInsets.symmetric(vertical: 3),
                                           height: double.infinity,
                                           width: double.infinity,
                                           decoration: BoxDecoration(
                                             color: bgColor,
                                             borderRadius: BorderRadius.circular(8),

                                           ),
                                           child: Center(child: Text("-", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
                                         ),),
                                         Spacer(
                                           flex: 2,
                                         ),
                                     ],
                                   )),
                               ],
                             ),
                           ),
                         )
                       ],
                      ),
                    ),
                  ],
                ),
              )),
            Expanded(
              flex:20,
              child: Container()),
            Expanded(
              flex:20,
              child: Container()),
            Expanded(
              flex:10,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: height*0.01500, vertical: 8),
                child: GradButton(text: "Buy Now", onPress: (){}),
              )),
          ],
        ),
      ),
    );
  }
}
