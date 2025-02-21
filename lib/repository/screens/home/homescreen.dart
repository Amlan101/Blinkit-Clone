import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

import '../cart/productcard.dart';
import 'grocerykitchenwidget.dart';
import 'megadiwalisalewidget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final TextEditingController searchController = TextEditingController();

  final List<Map<String, String>> products = [
    {
      "image": "image 54.png",
      "name": "Lid Candle",
      "price": "₹79"
    },
    {
      "image": "image 57.png",
      "name": "Gulab Jamun",
      "price": "₹99"
    },
    {
      "image": "image 63.png",
      "name": "Golden Glass",
      "price": "₹79"
    },
    {
      "image": "crackers.png",
      "name": "Crackers",
      "price": "₹99"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),

            /// 🔴 HEADER SECTION
            Stack(
              children: [
                Container(
                  height: 170,
                  width: double.infinity,
                  color: const Color(0XFFEC0505),
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      _buildHeaderRow("Blinkit", 14, FontWeight.bold),
                      _buildHeaderRow("in 10 minutes", 20, FontWeight.bold),
                      _buildHeaderRow("Home - Bhubaneswar, Odisha", 14, FontWeight.normal),
                    ],
                  ),
                ),
                const Positioned(
                  right: 25,
                  bottom: 110,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, color: Colors.black, size: 20),
                  ),
                ),
                Positioned(
                  top: 110,
                  left: 15,
                  right: 15,
                  child: UiHelper.customSearchField(controller: searchController),
                ),
              ],
            ),

            /// 🔥 MEGA DIWALI SALE WIDGET
            const MegaDiwaliSaleWidget(),

            /// 🛍️ PRODUCT LIST
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              child: SizedBox(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SizedBox(
                        width: 130,
                        child: ProductCard(
                          image: products[index]["image"]!,
                          name: products[index]["name"]!,
                          price: products[index]["price"]!,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            /// 🛒 GROCERY & KITCHEN WIDGET
            const GroceryKitchenWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderRow(String text, double size, FontWeight weight) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Align(
        alignment: Alignment.centerLeft,
        child: UiHelper.customText(
          text: text,
          color: Colors.black,
          fontWeight: weight,
          fontSize: size,
        ),
      ),
    );
  }
}