import 'package:flutter/material.dart';

class UiHelper {
  static customImage({required String img, BoxFit fit = BoxFit.contain, double? width, double? height}) {
    return Image.asset(
      "assets/images/$img",
      fit: fit,
      width: width,
      height: height,
    );
  }


  static customText({
    required String text,
    required Color color,
    required FontWeight fontWeight,
    required double fontSize,
    String? fontFamily,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
        fontFamily: fontFamily ?? "regular",
      ),
    );
  }



}
