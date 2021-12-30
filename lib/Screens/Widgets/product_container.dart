import 'package:ecommerce_app/Screens/productview.dart';
import 'package:ecommerce_app/Modules/productmodules.dart';
import 'package:ecommerce_app/Screens/Widgets/bottom_navigation.dart';
import 'package:ecommerce_app/Utils/pages.dart';
import 'package:flutter/material.dart';

class ProductContainer extends StatefulWidget {
  ProductInfo product;
  Pages current;
  ProductContainer({Key? key, required this.product, required this.current}) : super(key: key);


  @override
  _ProductContainerState createState() => _ProductContainerState();
}

class _ProductContainerState extends State<ProductContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 190,
      width: 140,
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProductViewPage(product: widget.product, current: widget.current,)));
                    },
                    child: Hero(
                      tag: widget.product.id,
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        clipBehavior: Clip.hardEdge,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color(0xffff5f5f5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.network(
                          widget.product.images[0],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 12,
                      right: 12,
                      child: GestureDetector(
                        onTap: () {
                          if(!widget.product.isFav){
                            setState(() {
                              widget.product.isFav = !widget.product.isFav;
                              favoriteProducts.add(widget.product);
                            }) ;
                          } else {
                            setState(() {
                              widget.product.isFav = !widget.product.isFav;
                              favoriteProducts.remove(widget.product);
                            }) ;
                          }
                          if(favoriteProducts.length == 0) {
                            navState.setState(() {
                              navState.favOn = false;
                            });
                          } else {
                            navState.setState(() {
                              navState.favOn = true;
                            });
                          }
                        },
                        child: (widget.product.isFav)
                            ? Icon(
                                Icons.favorite,
                                color: Colors.red[300],
                              )
                            : Icon(
                                Icons.favorite_outline_rounded,
                                color: Colors.grey,
                              ),
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.product.name,
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color(0xffff5f5f5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        " ${widget.product.images.length} Colours",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            r" $" + widget.product.price.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              if(!widget.product.onCart){
                                setState(() {

                                  widget.product.onCart = true;
                                  widget.product.cartCount = 1;
                                  cart.add(widget.product);
                                });
                              } else {
                                setState(() {
                                  widget.product.onCart = false;
                                  widget.product.cartCount = 0;
                                  cart.remove(widget.product);
                                });
                              }
                              if(cart.length == 0) {
                                navState.setState(() {
                                  navState.cartOn = false;
                                });
                              } else {
                                navState.setState(() {
                                  navState.cartOn = true;
                                });
                              }
                            },
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    width: 0.8,
                                    color: Colors.black,
                                  )),
                              child: (!widget.product.onCart)? Icon(
                                Icons.add,
                                size: 16,
                              ) : Icon(
                                Icons.done_all_sharp,
                                color: Colors.blue,
                                size: 16,
                              ),
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
    );
  }
}
