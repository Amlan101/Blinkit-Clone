import 'package:flutter/material.dart';

import '../../widgets/uihelper.dart';

class MegaDiwaliSaleWidget extends StatelessWidget {
  const MegaDiwaliSaleWidget({super.key});

  final List<Map<String, String>> data = const [
    {"img": "image 50.png", "text": "Lights, Diyas & Candles"},
    {"img": "image 51.png", "text": "Diwali Gifts"},
    {"img": "image 52.png", "text": "Appliances & Gadgets"},
    {"img": "image 53.png", "text": "Home & Living"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: const Color(0XFFEC0505),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiHelper.customImage(img: "image 60.png"),
              UiHelper.customImage(img: "image 55.png"),
              UiHelper.customText(
                text: "Mega Diwali Sale",
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: "bold",
              ),
              UiHelper.customImage(img: "image 55.png"),
              UiHelper.customImage(img: "image 61.png"),
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data.length,
              itemBuilder: (context, index) {
                return _buildCategoryItem(data[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(Map<String, String> item) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          UiHelper.customImage(img: item["img"]!),
          const SizedBox(height: 5),
          UiHelper.customText(
            text: item["text"]!,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 10,
          ),
        ],
      ),
    );
  }
}
