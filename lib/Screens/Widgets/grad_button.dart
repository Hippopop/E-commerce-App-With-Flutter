import 'package:ecommerce_app/Utils/utilities.dart';
import 'package:flutter/material.dart';


class GradButton extends StatefulWidget {
final onPress;
String text;
double? height;
double? width;
Color? color;
double? fontSize;
GradButton( { Key? key, this.height, this.width, required this.text, required this.onPress, Color? this.color, double? this.fontSize}) : super(key: key);
  @override
  _GradButtonState createState() => _GradButtonState();
}

class _GradButtonState extends State<GradButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        onPressed: widget.onPress,
        child: Container(
            //width: (width == 0) ? null : width,
            width: widget.width,
            height: widget.height,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
               gradient: (widget.color == null)?baseGrad : null ,
              color: widget.color,
            ),
            child: Center(
              child: Text(
                widget.text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: (widget.fontSize == null)?18 : widget.fontSize,
                    fontWeight: FontWeight.bold),
              ),
            )));
  }
}