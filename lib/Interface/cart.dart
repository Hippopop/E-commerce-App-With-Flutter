
import 'package:ecommerce_app/Modules/productmodules.dart';
import 'package:ecommerce_app/Utils/cart_item.dart';
import 'package:ecommerce_app/Utils/grad_button.dart';
import 'package:ecommerce_app/Utils/pages.dart';
import 'package:ecommerce_app/Utils/utilities.dart';
import 'package:flutter/material.dart';

late _CartPageState cartState;


class CartPage extends StatefulWidget {
    static final route = "/Interface/cart";

  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() {
    cartState = _CartPageState();
  return cartState;
  }
}

class _CartPageState extends State<CartPage> {
  Pages current = Pages.cart;

  late int total;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    total = totalCost();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.width;
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
                padding: EdgeInsets.only(left: width*0.0200, right: width*0.02000, top: 35, bottom: 12),
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Your Cart", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                        Text((cart.length == 0)?"Let's Start Shopping!":("You have "+ cart.length.toString() + " items on your cart."), style: TextStyle(fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ),
                ),
              )),
            Expanded(
              flex: 36,
              child: Container(
                //color: Colors.orange,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: width*0.02000, vertical: 5),
                child:(cart.length == 0)? Image.asset("Assets/images/undraw_empty_cart_co35.png") : ListView(
                  padding: EdgeInsets.zero,
                  children: cart.map((product) {
                    return CartItem(product: product,);
                  }).toList(),
                ),
              )),
            Expanded(
              flex:22,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: width*0.0200, right: width*0.0200),
                padding: EdgeInsets.symmetric(horizontal: 8),
                //color: Colors.purpleAccent,
                child:  Row(
                  children: [
                    Expanded(
                      flex:4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Spacer(
                           flex: 1,
                         ),
                          Expanded(
                            flex: 2,
                            child: Text("Total", style: TextStyle( fontWeight: FontWeight.w500, fontSize: 16, color: Colors.black54),),),
                          Expanded(
                            flex: 2,
                            child: Text("Delevery", style: TextStyle( fontWeight: FontWeight.w500, fontSize: 16, color: Colors.black54),),),
                          Spacer(
                            flex: 1,
                          ),
                          Expanded(
                            flex: 2,
                            child: Text("Subtotal", style: TextStyle( fontWeight: FontWeight.w500, fontSize: 16, color: Colors.black54),),),
                          Spacer(
                            flex: 1,
                          ),
                        ],

                      ),),
                    Expanded(
                      flex: 6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                        Expanded(
                          flex:1,
                          child: Divider(
                            thickness: 1.5,
                          ),),
                        Expanded(
                          flex: 2,
                          child: Text(r"$" + total.toString(), style: TextStyle( fontWeight: FontWeight.w500, fontSize: 20),),),
                        Expanded(
                          flex: 2,
                          child: Text("Free", style: TextStyle( fontWeight: FontWeight.w500, fontSize: 18),),),
                        Expanded(
                          flex: 1,
                          child: Padding(
padding: EdgeInsets.only(bottom: 15),
child: Divider(
                              thickness: 1.5,
                            ),
                          ),),
                        Expanded(
                          flex: 2,
                          child: Text(r"$"+total.toString(), style: TextStyle( fontWeight: FontWeight.w500, fontSize: 20),),),
                        Spacer(
                          flex: 1,
                        ),
                      ],),
                    ),
                  ],
                ),
              )),
            Expanded(
              flex:14,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: width*0.0200),
                padding: EdgeInsets.all(8),
               // color: Colors.orange,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Text("Payment Methods", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,),),),
                    Expanded(
                      flex: 7,
                      child: Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 7,
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.all(5),
                                height: height*0.15,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: bgColor,
                                  ),
                                  child: Row()),),
                            Expanded(
                              flex: 3,
                              child: Container(
                                height: height*0.15,
                                padding: EdgeInsets.all(5),
                                margin: EdgeInsets.symmetric(horizontal: 8),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: bgColor
                                ),
                                child: Center(
                                  child: Text("+ Add", style: TextStyle( fontWeight: FontWeight.w500, fontSize: 18),),
                                ),

                              ),),
                          ],
                        ),
                      ),),
                  ],
                ),
              )),
            Expanded(
              flex:10,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: width*0.0200, vertical: 8),
                child: GradButton(text: "Place Order", onPress: (){
                  setState(() {
                    ordered.addAll(cart);
                    cart.clear();
                    total = 0;
                  });
                  final snackBar = SnackBar(
                    content: const Text('Thank You! You Orders are placed.'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }),
              )),
          ],
        ),
      ),
    );

  }
}
