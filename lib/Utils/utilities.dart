import 'package:ecommerce_app/Modules/productmodules.dart';
import 'package:ecommerce_app/Screens/Widgets/review_getter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

LinearGradient baseGrad = LinearGradient(
  colors: [
    Color(0xfff9964ff),
    Color(0xfff8d53ff),
    Color(0xfff7631ff),
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

Color bgColor = Color(0xffff0f4fe);
//Color bgColor = Color(0xffff5f5f5);


TextStyle smallSub = TextStyle(
  fontSize: 18,
);



class Review {
String date;
String time;
String comment;
double rating;
String img;

Review({required this.time, required this.date, required this.rating, required this.comment, required this.img, });
}


class Helper{
  static  showDialog(BuildContext context, ProductInfo product) {
    return showGeneralDialog(
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 300),
      context: context,
      useRootNavigator: true,
      pageBuilder: (_, __, ___) {
        return ReviewGetter(product: product,);
      },
      transitionBuilder: (_, anim, __, child) {
        return SlideTransition(
          position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
          child: child,
        );
      },
    );
  }

}



InputDecoration inStyle = InputDecoration(
filled: true,
border: OutlineInputBorder(
borderSide: BorderSide(),
borderRadius: BorderRadius.circular(50),
),
focusedBorder: OutlineInputBorder(
borderSide: BorderSide(
color: Colors.grey,
width: 2.5,
),
// borderRadius: BorderRadius.circular(50),
),
enabledBorder: OutlineInputBorder(
borderSide: BorderSide(
color: Colors.transparent,
width: 1.5,
),

),
fillColor: Color(0x444F2F3F5),
floatingLabelStyle: TextStyle(
fontWeight: FontWeight.bold,
color: Colors.black,
fontSize: 20,
),

focusColor: Colors.blue,
);


