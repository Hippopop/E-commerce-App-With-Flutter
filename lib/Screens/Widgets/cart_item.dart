import 'package:ecommerce_app/Screens/cart.dart';
import 'package:ecommerce_app/Modules/productmodules.dart';
import 'package:ecommerce_app/Screens/Widgets/bottom_navigation.dart';
import 'package:ecommerce_app/Utils/utilities.dart';
import 'package:flutter/material.dart';





class CartItem extends StatefulWidget {
  ProductInfo product;

  CartItem({
    Key? key,
    required this.product,
  }) : super(key: key);
  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
               child: Image.network(widget.product.images[0],
             fit: BoxFit.cover,
             ),
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
                        child: Text(widget.product.name, style: TextStyle(color: Colors.black54, fontSize: 16, fontWeight: FontWeight.w500),)),),
                  Expanded(
                    flex: 4,
                    child:Align(
                        alignment: Alignment.centerLeft,
                        child: Text(r"$"+widget.product.price.toString(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),),
                  Expanded(
                      flex: 4,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  widget.product.cartCount--;
                                  if(widget.product.cartCount == 0){
                                    widget.product.onCart = false;
                                    cart.remove(widget.product);
                                  }
                                });
                                cartState.setState(() {
                                  cartState.total = totalCost();
                                });
                                if(cart.isEmpty){
                                  navState.setState(() {
                                    navState.cartOn = false;
                                  });
                                }
                              } ,
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 3),
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: bgColor,
                                  borderRadius: BorderRadius.circular(8),

                                ),
                                child: Center(child: Text("−", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
                              ),
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
                              child: Center(child: Text(widget.product.cartCount.toString(), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),
                            ),),
                          Expanded(
                            flex: 1,
                            child:  GestureDetector(
                              onTap: (){
                                setState(() {
                                  widget.product.cartCount++;
                                  if(widget.product.cartCount == 0){
                                    widget.product.onCart = false;
                                    cart.remove(widget.product);
                                  }
                                });
                                cartState.setState(() {
                                  cartState.total = totalCost();
                                });
                              } ,
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 3),
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: bgColor,
                                  borderRadius: BorderRadius.circular(8),

                                ),
                                child: Center(child: Text("+", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
                              ),
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
    );
  }
}
