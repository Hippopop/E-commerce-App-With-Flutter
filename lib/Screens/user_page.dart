import 'package:ecommerce_app/Modules/user_files.dart';
import 'package:ecommerce_app/Screens/product_adder.dart';
import 'package:ecommerce_app/Screens/registration.dart';
import 'package:ecommerce_app/Screens/splashscreen.dart';
import 'package:ecommerce_app/Modules/productmodules.dart';
import 'package:ecommerce_app/Controllers/User_storage.dart';
import 'package:ecommerce_app/Screens/Widgets/bottom_navigation.dart';
import 'package:ecommerce_app/Utils/pages.dart';
import 'package:ecommerce_app/Utils/utilities.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserPage extends StatefulWidget {
  static final route = "/Interface/user_page";

  const UserPage({Key? key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  Pages current = Pages.user;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    UserProducts data = Provider.of<UserProducts>(context);
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
                    padding: EdgeInsets.only(
                        left: width * 0.0200,
                        right: width * 0.02000,
                        top: 5,
                        bottom: 8),
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: baseGrad,
                        color: bgColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        )),
                    child: SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Row(
                            children: [
                              Expanded(
                                flex: 25,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Stack(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(3),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                        ),
                                        child: CircleAvatar(
                                          radius: 40,
                                          backgroundImage: NetworkImage(
                                            SplashScreen.currentUser.img,
                                          ),
                                        ),
                                      ),
                                      /* Positioned(
                                        top: 1,
                                        right: 1,
                                        child:  Container(
                                          child: Icon(Icons.edit_rounded,
                                          size: 20,
                                          color: Colors.grey[700],
                                      ),
                                        ),)*/
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 65,
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Spacer(
                                        flex: 3,
                                      ),
                                      Expanded(
                                          flex: 3,
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: Row(
                                              children: [
                                                RichText(
                                                  text: TextSpan(
                                                      text: "@",
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 20,
                                                      ),
                                                      children: [
                                                        TextSpan(
                                                          text: SplashScreen.currentUser.name,
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            color: bgColor,
                                                          ),
                                                        )
                                                      ]),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Icon(
                                                  Icons.edit_rounded,
                                                  size: 18,
                                                  color: Colors.grey,
                                                ),
                                              ],
                                            ),
                                          )),
                                      Expanded(
                                          flex: 3,
                                          child: Container(
                                            child: Text(
                                              SplashScreen.currentUser.email,
                                              style: TextStyle(
                                                letterSpacing: 1,
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 10,
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap:() { final snackBar = SnackBar(
                                            duration: Duration(milliseconds: 50000),
                                            content: const Text('You sure you want to logout??'),
                                            action: SnackBarAction(
                                              label: "Yes.",
                                              onPressed: (){
                                                DataHandler.clearAllData();
                                                Navigator.pushReplacementNamed(context, RegistrationForm.route);
                                              },
                                            ),

                                          );
                                          ScaffoldMessenger.of(context).showSnackBar(snackBar);},
                                          child: Container(
                                            padding: EdgeInsets.all(6),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xdddfffff),
                                            ),
                                            child: Icon(
                                              Icons.logout,
                                              color: Colors.red[400],
                                              size: 17,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xdddfffff),
                                          ),
                                          child: Icon(
                                            Icons.add_link_rounded,
                                            color: Colors.grey[700],
                                            size: 18,
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    flex: 80,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: width * 0.0200,
                              right: width * 0.02000,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: bgColor,
                            ),
                            child: Column(
                              children: [
                                const Expanded(
                                  flex: 15,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        "DASHBOARD",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 25,
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.symmetric(
                                                vertical: 15),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5, horizontal: 8),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(data.favoriteList.length.toString(),
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 24,
                                                    color: Color(0xfffa25eff),                                                  ),
                                                ),
                                               /* Icon(
                                                  Icons.category_outlined,
                                                  color: Color(0xfff8141ff),
                                                  size: 24,
                                                ),*/
                                                Text(
                                                  "Total Fav.",
                                                  style:
                                                      TextStyle(fontSize: 16),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.all(15),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5, horizontal: 0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(data.cartList.length.toString(),
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 24,
                                                    color: Color(0xffb225d0),                                                  ),
                                                ),
                                                /*Icon(
                                                  Icons.favorite,
                                                  color: Color(0xfffa25eff),
                                                  size: 24,
                                                ),*/
                                                Text(
                                                  "On Cart",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.symmetric(vertical: 15),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5, horizontal: 3),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(data.ordered.length.toString(),
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 24,
                                                    color: Color(0xfff8141ff),                                                  ),
                                                ),
                                               /* Icon(
                                                  Icons.monetization_on,
                                                  color: Color(0xffb225d0),
                                                  size: 24,
                                                ),*/
                                                Text("Orders",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.symmetric(vertical: 15),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5, horizontal: 8),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("0",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 24,
                                                    color: Colors.deepOrange[500],
                                                  ),
                                                ),
                                                /*Icon(
                                                  Icons.face,
                                                  color: Colors.deepOrange,
                                                  size: 24,
                                                ),*/
                                                Text(
                                                  "Delivered",
                                                  style:
                                                      TextStyle(fontSize: 16),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                /* Spacer(
                                  flex: 1,
                                ),*/
                                Expanded(
                                  flex: 25,
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              vertical: 15),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 8),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(8),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              Icon(
                                                Icons.category_outlined,
                                                color: Colors.deepOrange[500],                                                size: 24,
                                              ),
                                              Text(
                                                "Category",
                                                style:
                                                TextStyle(fontSize: 16),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.all(15),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 0),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(8),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              Icon(
                                                Icons.reviews_rounded,
                                                color:  Color(0xfff8141ff),                                                size: 24,
                                              ),
                                              Text(
                                                "Reviews",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.symmetric(vertical: 15),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 3),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(8),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              Icon(
                                                Icons.history_rounded,
                                                color: Color(0xffb225d0),
                                                size: 24,
                                              ),
                                              Text("History",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.symmetric(vertical: 15),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 8),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(8)),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              Icon(
                                                Icons.airplane_ticket_rounded,
                                                color: Color(0xfffa25eff),                                                size: 24,
                                              ),
                                              Text(
                                                "Adress",
                                                style:
                                                TextStyle(fontSize: 16),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                /* Spacer(
                                  flex: 1,
                                ),*/
                                Expanded(
                                  flex: 25,
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              vertical: 15),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 8),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(8),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              Icon(
                                                Icons.payment_rounded,
                                                color: Color(0xfffa25eff),
                                                size: 24,
                                              ),
                                              Text(
                                                "Payment",
                                                style:
                                                TextStyle(fontSize: 16),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.all(15),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 0),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(8),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              Icon(
                                                Icons.help_center_rounded,
                                                color: Color(0xfff8141ff),
                                                size: 24,
                                              ),
                                              Text(
                                                "Helpline",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.symmetric(vertical: 15),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 3),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(8),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              Icon(
                                                Icons.report_gmailerrorred_rounded,
                                                color: Color(0xffb225d0),
                                                size: 24,
                                              ),
                                              Text("Report",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.symmetric(vertical: 15),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 8),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(8)),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              Icon(
                                                Icons.description_outlined,
                                                color: Colors.deepOrange[500],                                                size: 24,
                                              ),
                                              Text(
                                                "About",
                                                style:
                                                TextStyle(fontSize: 16),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(
                                  flex: 8,
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: width * 0.0200,
                              right: width * 0.02000,
                              top: 8,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(child: GestureDetector(
                                  onTap:() {
                                    Navigator.pushNamed(context, ProductAdder.route);
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(vertical: 4),
                                    width: double.infinity,
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.symmetric(horizontal: 16,),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: bgColor,
                                    ),
                                    child: Text("Sell Product.", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black54,),),
                                  ),
                                ),),
                                Expanded(child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 4),
                                  width: double.infinity,
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.symmetric(horizontal: 16,),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: bgColor,
                                  ),
                                  child: Text("Add Your Shop.", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black54,),),
                                ),),
                                Expanded(child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 4),
                                  width: double.infinity,
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.symmetric(horizontal: 16,),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: bgColor,
                                  ),
                                  child: Text("Edit Personal Information.", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black54,),),
                                ),),
                                Expanded(child: Container(),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
          Expanded(
            flex: 875,
            child: cBottomNavigationBar(height: height, current: current),
          ),
        ],
      ),
    );
  }
}
