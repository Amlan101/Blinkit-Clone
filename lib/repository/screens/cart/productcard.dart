import 'package:flutter/material.dart';
import '../../widgets/uihelper.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final String price;

  const ProductCard({
    super.key,
    required this.image,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            Expanded(
              child: UiHelper.customImage(
                img: image,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 100,
              ),
            ),
            SizedBox(height: 5),
            // Product Name
            UiHelper.customText(
              text: name,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 12,
              fontFamily: "bold"
            ),
            SizedBox(height: 5),
            // Delivery Time
            Row(
              children: [
                Icon(Icons.access_time, size: 16, color: Colors.brown),
                SizedBox(width: 5),
                UiHelper.customText(
                  text: "16 MINS",
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                ),
              ],
            ),
            SizedBox(height: 5),
            // Product Price
            UiHelper.customText(
              text: price,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: "bold"
            ),
            // Add Button
            Align(
              alignment: Alignment.centerRight,
              child: UiHelper.customButton(() {}, "ADD"),
            ),
          ],
        ),
      ),
    );
  }
}
