import 'package:ecommerce_app/Modules/productmodules.dart';
import 'package:ecommerce_app/Utils/bottom_navigation.dart';
import 'package:ecommerce_app/Utils/grad_button.dart';
import 'package:ecommerce_app/Utils/pages.dart';
import 'package:ecommerce_app/Utils/utilities.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class FavoritesPage extends StatefulWidget {
  static final route = "/Interface/favorites";

  const FavoritesPage({Key? key}) : super(key: key);

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  Pages current = Pages.favorites;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 9225,
            child: Column(
              children: [
                Expanded(
                  flex: 20,
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
                          Text("Your Favorites", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                          Text((favoriteProducts.length == 0)?"Let's find something favorite!" : ("You have "+favoriteProducts.length.toString()+" favorite items."), style: TextStyle(fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ),
                  ),
                ),),
                Expanded(
                    flex: 80,
                    child: Container(
                      child: (favoriteProducts.length == 0)? Center(
                        child: Image.asset("Assets/images/undraw_Super_thank_you_re_f8bo.png"),
                      ) :ListView.builder(
                        padding: EdgeInsets.all(0),
                        itemCount: favoriteProducts.length,
                        itemBuilder: (context, index)
                        {
                          ProductInfo product = favoriteProducts[index];
                        return Dismissible(
                          onDismissed: (direction){
                            if(direction == DismissDirection.startToEnd){
                              setState(() {
                                favoriteProducts[index].isFav = false;
                                favoriteProducts.removeAt(index);
                              });
                            }
                            if(direction == DismissDirection.endToStart){
                              setState(() {
                                cart.add(product);
                                product.onCart = true;
                                product.cartCount++;
                                favoriteProducts[index].isFav = false;
                                favoriteProducts.removeAt(index);

                              });
                            }
                          },
                          background: Container(color: Colors.red,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 5),
                          child: Icon(Icons.delete_forever_sharp,
                            color: Colors.white,
                            size: 32,
                          ),
                          ),
                          secondaryBackground:  Container(color: Colors.green,
                            alignment: Alignment.centerRight,
                            padding: EdgeInsets.only(right: 5),
                            child: Icon(Icons.add_shopping_cart,
                            size: 32,
                              color: Colors.white,
                            ),
                          ),
                          key: ValueKey(product.id),
                          child: Container(
                            width: double.infinity,
                            height: 120,
                            margin: EdgeInsets.symmetric(horizontal:  width*0.0200+5, vertical: 5),
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: bgColor,
                              borderRadius: BorderRadius.circular(12)
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                        color: bgColor,
                                        borderRadius: BorderRadius.circular(12)
                                    ),
                                    child: Image.network(product.images[0],
                                    fit: BoxFit.cover,
                                    ),
                                  ),),
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    margin: EdgeInsets.only(left: 8),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            flex:6,
                                            child: Container(
                                              padding: EdgeInsets.symmetric(vertical: 5),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,

                                                children: [
                                                  Text(product.name, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: Colors.black54),),
                                                  Text(r"$"+product.price.toString(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),),
                                                ],
                                              ),
                                            )),
                                        Expanded(
                                            flex: 4,
                                            child: Container(
                                              padding: EdgeInsets.only(left: 5, bottom: 5),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    flex: 48,
                                                    child: GradButton(text: "Details", onPress: (){}, fontSize: 15, color: Colors.grey,),),
                                                  Spacer(
                                                    flex: 2,
                                                  ),
                                                  Expanded(
                                                    flex: 48,
                                                    child: GradButton(text: "Buy", onPress: (){}, fontSize: 15,),
                                                  )
                                                ],
                                              ),
                                            )),
                                      ],

                                    ),
                                  ),),
                              ],
                            ),
                          ),
                        );
                      },

                      )

                    )),
              ],
            ),),
          Expanded(
            flex: 875,
            child: cBottomNavigationBar(height: height, current: current),),
        ],
      ),
    );
  }
}
