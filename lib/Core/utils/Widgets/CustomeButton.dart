import 'package:bookyapp/Core/utils/Styles.dart';
import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton(
      {Key? key,
      required this.backgroundcolor,
      required this.textcolor,
       this.borderRadius, required this.text,  this.fontSize})
      : super(key: key);

  final Color backgroundcolor;
  final Color textcolor;
  final BorderRadius ?borderRadius;
  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: backgroundcolor,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius?? BorderRadius.circular(16),
              )),
          onPressed: () {},
          child: Text(text,
              style: Styles.textStyle16
                  .copyWith(color: textcolor, fontWeight: FontWeight.w900,
              fontSize: fontSize))),
    );
  }
}
