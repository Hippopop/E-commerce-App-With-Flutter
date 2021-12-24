import 'package:ecommerce_app/Interface/cart.dart';
import 'package:ecommerce_app/Interface/favorites.dart';
import 'package:ecommerce_app/Interface/homepage.dart';
import 'package:ecommerce_app/Interface/productspage.dart';
import 'package:ecommerce_app/Interface/user_page.dart';
import 'package:ecommerce_app/Utils/pages.dart';
import 'package:flutter/material.dart';


class cBottomNavigationBar extends StatelessWidget {
  const cBottomNavigationBar({
    Key? key,
    required this.height,
    required this.current,
  }) : super(key: key);

  final double height;
  final Pages current;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73.55,
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
            onTap: () {
              Navigator.pushNamed(context, HomePage.route);
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
                      Icons.home_outlined,
                      size: 28,
                      color: (current== Pages.home)? Colors.purpleAccent: Colors.grey,
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Text(
                        "Home",
                        style: TextStyle(
                            fontSize: 12,
                            color: (current== Pages.home)? Colors.purpleAccent: Colors.grey,
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
              Navigator.pushNamed(context, ProductsPage.route);
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
                      Icons.border_all_rounded,
                      size: 28,
                      color: (current== Pages.store)? Colors.purpleAccent: Colors.grey,
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Text(
                        "Store",
                        style: TextStyle(
                            fontSize: 12,
                            color: (current== Pages.store)? Colors.purpleAccent: Colors.grey,
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
                      color: (current== Pages.cart)? Colors.purpleAccent: Colors.grey,
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Text(
                        "Cart",
                        style: TextStyle(
                            fontSize: 12,
                            color: (current== Pages.cart)? Colors.purpleAccent: Colors.grey,
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
              Navigator.pushNamed(context, FavoritesPage.route);

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
                    child: Stack(
                      fit: StackFit.passthrough,
                      children: [
                        Icon(
                          Icons.favorite,
                          size: 26,
                          color: (current== Pages.favorites)? Colors.purpleAccent: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Text(
                        "Favorites",
                        style: TextStyle(
                            fontSize: 12,
                            color: (current== Pages.favorites)? Colors.purpleAccent: Colors.grey,
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
              Navigator.pushNamed(context, UserPage.route);

            },
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
                      fit: StackFit.passthrough,
                      children: [
                        Icon(
                          Icons.perm_identity_rounded,
                          size: 28,
                          color: (current== Pages.user)? Colors.purpleAccent: Colors.grey,
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
                            color: (current== Pages.user)? Colors.purpleAccent: Colors.grey,
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
    );
  }
}
