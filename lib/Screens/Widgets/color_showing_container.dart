import 'package:flutter/material.dart';


class ColorShowingContainer extends StatelessWidget {
  const ColorShowingContainer({Key? key, required this.context, required this.img}) : super(key: key);
  final String img;
  final BuildContext context;
  @override
  Widget build(context) {
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
        img,
        fit: BoxFit.cover,
      ),
    );
  }
}
