import 'package:ecommerce_app/Interface/productview.dart';
import 'package:ecommerce_app/Modules/productmodules.dart';
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

/*

ElevatedButton gradButton(BuildContext context, double height, double width,
    String text, final onclick) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      onPressed: onclick,
      child: Container(
          width: (width == 0) ? null : width,
          height: (height == 0) ? null : height,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: baseGrad,
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          )));
}
*/
/*
Container productContainer(BuildContext? context, ProductInfo product) {
  return Container(
    margin: EdgeInsets.only(right: 10),
    height: 220,
    width: 144,
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
                    Navigator.pushNamed(context!, ProductViewPage.route,
                        arguments: product);
                  },
                  child: Hero(
                    tag: product.id,
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
                        product.images[0],
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
                        //setState(() {});
                      },
                      child: (product.isFav)
                          ? Icon(
                              Icons.favorite,
                              color: Colors.red,
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
                    product.name,
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
                      " ${product.images.length} Colours",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r" $" + product.price.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                width: 0.8,
                                color: Colors.black,
                              )),
                          child: Icon(
                            Icons.add,
                            size: 16,
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
}*/

Container colorShowContainer(BuildContext context, String link) {
  return Container(
    margin: const EdgeInsets.only(
      right: 12,
    ),
    width: 108,
    clipBehavior: Clip.hardEdge,
    decoration: BoxDecoration(
      //color: Colors.black,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Image.network(
      link,
      fit: BoxFit.cover,
    ),
  );
}

Container sizeShowingBox(BuildContext context, String size) {
  return Container(
    height: 44,
    width: 55,
    decoration: BoxDecoration(
      border: Border.all(
        width: 0.8,
        color: Colors.black,
      ),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Center(
        child: Text(
      size,
      style: TextStyle(fontWeight: FontWeight.bold),
    )),
  );
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