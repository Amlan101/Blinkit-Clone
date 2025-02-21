import 'package:flutter/material.dart';

import '../../widgets/uihelper.dart';

class GroceryKitchenWidget extends StatelessWidget {
  const GroceryKitchenWidget({super.key});

  final List<Map<String, String>> groceryList = const [
    {"img": "image 41.png", "text": "Vegetables & Fruits"},
    {"img": "image 42.png", "text": "Atta, Dal & Rice"},
    {"img": "image 43.png", "text": "Oil, Ghee & Masala"},
    {"img": "daily_bread_milk.png", "text": "Dairy, Bread & Milk"},
    {"img": "bourbon.png", "text": "Biscuits & Bakery"},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        _buildSectionTitle("Grocery & Kitchen"),
        const SizedBox(height: 10),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: groceryList.length,
            itemBuilder: (context, index) {
              return _buildGroceryItem(groceryList[index]);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Align(
        alignment: Alignment.centerLeft,
        child: UiHelper.customText(
          text: title,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 14,
          fontFamily: "bold",
        ),
      ),
    );
  }

  Widget _buildGroceryItem(Map<String, String> item) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Container(
            height: 78,
            width: 71,
            decoration: BoxDecoration(
              color: const Color(0XFFD9EBEB),
              borderRadius: BorderRadius.circular(10),
            ),
            child: UiHelper.customImage(img: item["img"]!),
          ),
          const SizedBox(height: 5),
          UiHelper.customText(
            text: item["text"]!,
            color: Colors.black,
            fontWeight: FontWeight.normal,
            fontSize: 10,
          ),
        ],
      ),
    );
  }
}
