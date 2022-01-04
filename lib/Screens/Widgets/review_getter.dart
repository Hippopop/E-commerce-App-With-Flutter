import 'package:ecommerce_app/Screens/productview.dart';
import 'package:ecommerce_app/Modules/productmodules.dart';
import 'package:ecommerce_app/Utils/pages.dart';
import 'package:ecommerce_app/Utils/pages.dart';
import 'package:ecommerce_app/Utils/utilities.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class ReviewGetter extends StatefulWidget {
  const ReviewGetter({
    Key? key,
    required this.product,
  }) : super(key: key);
  final ProductInfo product;

  @override
  State<ReviewGetter> createState() => _ReviewGetterState();
}
class _ReviewGetterState extends State<ReviewGetter> {
  double sliderValue = 3;
   Map<int, String> nameSet = {
    1 : "Very Bad",
    2 : "Bad",
    3 : "Good",
    4 : "Very Good",
    5 : "Excellent",
};

  DateTime dateToday = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day) ;

  final reviewCont = TextEditingController();
String time = DateFormat.jm().format(DateTime.now()).toString();
String date = DateFormat.yMMMd().format(DateTime.now()).toString();

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    reviewCont.addListener(() {setState(() {
    });});
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 500,
          margin: const EdgeInsets.only(bottom: 80, left: 12, right: 12),
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
           // color: bgColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 12,
                child: Container(
                  child: Column(
                    children: [
                      Text("Review", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24, color: Colors.black54),),
                      Divider(
                        thickness: 2,
                      ),
                    ],
                  ),
                ),),
              Expanded(
                flex: 90,
                child: Container(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Text("Rate The Product :", style: TextStyle(fontSize: 18/*, fontWeight: FontWeight.w500*/, color: Colors.black),),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 45),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(Icons.star, size: 32, color: (sliderValue >=1)? Colors.amber : Colors.grey[400],),
                                    Icon(Icons.star, size: 32, color: (sliderValue >= 2)? Colors.amber : Colors.grey[400],),
                                    Icon(Icons.star, size: 32, color: (sliderValue >= 3)? Colors.amber : Colors.grey[400],),
                                    Icon(Icons.star, size: 32, color: (sliderValue >= 4)? Colors.amber : Colors.grey[400],),
                                    Icon(Icons.star, size: 32, color: (sliderValue >= 5)? Colors.amber : Colors.grey[400],),
                                  ],
                                ),
                              ),
                              SliderTheme(
                                data: SliderThemeData(
                                  activeTrackColor: Colors.blue.shade300,
                                  inactiveTrackColor: Colors.grey[400],
                                  thumbColor: bgColor,
                                  overlayColor: Colors.grey.shade400,
                                  valueIndicatorColor: bgColor,
                                  inactiveTickMarkColor: Colors.grey,
                                  trackHeight: 8,
                                  activeTickMarkColor: Colors.transparent,
                                ),
                                child: Slider(
                                  value: sliderValue,

                                  onChanged: (value){
                                    setState(() {
                                      sliderValue = value;
                                    });
                                  },
                                  min: 1,
                                  max: 5,
                                  divisions: 4,
                                  label: "${nameSet[sliderValue]}",
                                ),
                              ),
                            ],
                          ),
                        ),),
                      Expanded(
                        flex: 6,
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                          child: Column(
                            children: [
                              Expanded(
                                  flex:1,
                                  child: Text("Write Your Review Here :", style: TextStyle(fontSize: 18, /*fontWeight: FontWeight.w500,*/ color: Colors.black),)),
                              Expanded(
                                  flex: 8,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      controller: reviewCont,
                                      style: TextStyle(
                                        fontSize: 18, height: 1.5,
                                      ),
                                      keyboardType: TextInputType.multiline,
                                      maxLines: 50,
                                      decoration: InputDecoration(
                                        //label: Text("Review"),
                                        filled: true,
                                        fillColor: bgColor,
                                        border: OutlineInputBorder(
                                          gapPadding: 8,
                                          borderRadius: BorderRadius.circular(12),
                                          /*borderSide: BorderSide(
                                            width: 4.8,
                                            color: Colors.grey,

                                          ),*/
                                        )

                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ),),

                    ],
                  ),
                ),),
              Expanded(
                flex: 10,
                child: GestureDetector(
                  onTap: (){
                    Review store = Review(time: time, date: date, rating: sliderValue, comment: reviewCont.text, img: "nai");
                    Navigator.pop(context, store);
                  },
                  child: Hero(
                    tag: "reviewButton",
                    child: Container(
                      height: 40,
                      width: double.infinity,
                     // margin: EdgeInsets.symmetric(horizontal: width * 0.0450),
                      decoration: BoxDecoration(
                        //color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(12),
                          border:  Border.all(
                            color: Colors.black54,
                            width: 1.8,
                          )
                      ),
                      child: Row(
                        children: [
                          Spacer(
                            flex: 4,
                          ),
                          Expanded(
                            flex: 4,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.add,

                                ),
                                Text("Post review.",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,),),
                              ],
                            ),
                          ),
                          Spacer(
                            flex: 4,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),),
            ],
          ),
        ),
      ),
    );
  }
}
