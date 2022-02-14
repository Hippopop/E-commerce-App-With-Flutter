import 'package:ecommerce_app/Utils/utilities.dart';
import 'package:flutter/material.dart';

class SizeContainer extends StatelessWidget {
  const SizeContainer({Key? key, required this.context, required this.size}) : super(key: key);
final BuildContext context;
final String size;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 55,
      decoration: BoxDecoration(
        color: bgColor,

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
}
