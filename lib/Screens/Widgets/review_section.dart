import 'package:ecommerce_app/Modules/productmodules.dart';
import 'package:ecommerce_app/Modules/user_module.dart';
import 'package:ecommerce_app/Screens/splashscreen.dart';
import 'package:flutter/material.dart';


class ReviewSection extends StatelessWidget {
   ReviewSection({
    Key? key,
    required this.review,
  }) : super(key: key);
final Review review;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.centerLeft,
      height: 150,
      width: double.infinity,
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.symmetric(horizontal: width * 0.0500, vertical: 8),
      //color: Colors.amber,
      child: Column(
        children: [
          Expanded(
              flex: 6,
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage((review.img == "nai")?UserBox.currentUser.imgLink/*SplashScreen.currentUser.img*/: review.img),
                        ),
                      )),
                  Expanded(
                      flex: 8,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text((review.img == "nai")?UserBox.currentUser.name/*SplashScreen.currentUser.name*/: "Persons Name",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,),))),
                            Expanded(child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(review.date+"   "+ review.time,style: TextStyle(fontSize: 12),),
                                Container(

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      (review.rating>=5)? Icon(Icons.star, size: 18, color: Colors.amber,): SizedBox(),
                                      (review.rating>=4)? Icon(Icons.star, size: 18, color: Colors.amber,): SizedBox(),
                                      (review.rating>=3)? Icon(Icons.star, size: 18, color: Colors.amber,): SizedBox(),
                                      (review.rating>=2)? Icon(Icons.star, size: 18, color: Colors.amber,): SizedBox(),
                                      (review.rating>=1)? Icon(Icons.star, size: 18, color: Colors.amber,): SizedBox(),
                                      SizedBox(width: 2,),
                                      Text(review.rating.toString()),
                                    ],
                                  ),
                                )

                              ],
                            )),
                          ],
                        ),
                      ))
                ],
              )),
          Expanded(
              flex: 4,
              child: Row(
                children: [
                  Spacer(
                      flex: 2
                  ),
                  Expanded(
                      flex: 8,
                      child: Align(

                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(review.comment),
                          )))
                ],

              )),
        ],
      ),
    );
  }
}
