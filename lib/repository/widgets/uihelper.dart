import 'package:flutter/material.dart';

class UiHelper {
  static customImage({
    required String img,
    BoxFit fit = BoxFit.contain,
    double? width,
    double? height,
  }) {
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

  static customSearchField({required TextEditingController controller}) {
    return Container(
      height: 37,
      width: 360,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: Color(0XFFC5C5C5)),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: "Search ice-cream...",
          prefixIcon: Icon(Icons.search),
          suffixIcon: Icon(Icons.mic),
          border: InputBorder.none,
        ),
      ),
    );
  }

  static customButton(VoidCallback callback, String text) {
    return Container(
      height: 18,
      width: 30,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0XFF27AF34)),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Color(0XFF27AF34),
            fontWeight: FontWeight.bold,
            fontSize: 8,
          ),
        ),
      ),
    );
  }
}
