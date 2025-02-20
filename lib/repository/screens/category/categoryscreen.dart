import 'package:flutter/material.dart';
import '../../widgets/uihelper.dart';

class CategoryScreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  final List<Map<String, String>> groceryKitchen = [
    {"img": "image 41.png", "text": "Vegetables & Fruits"},
    {"img": "image 42.png", "text": "Atta, Dal & Rice"},
    {"img": "image 43.png", "text": "Oil, Ghee & Masala"},
    {"img": "image 44 (1).png", "text": "Dairy, Bread & Milk"},
    {"img": "image 45 (1).png", "text": "Biscuits & Bakery"},
  ];

  final List<Map<String, String>> secondGrocery = [
    {"img": "image 21.png", "text": "Dry Fruits & Cereals"},
    {"img": "image 22.png", "text": "Kitchen & Appliances"},
    {"img": "image 23.png", "text": "Tea & Coffees"},
    {"img": "image 24.png", "text": "Ice Creams & more"},
    {"img": "image 25.png", "text": "Noodles & Packet Food"},
  ];

  final List<Map<String, String>> snacksAndDrinks = [
    {"img": "image 31.png", "text": "Chips & Namkeens"},
    {"img": "image 32.png", "text": "Sweets & Chocolates"},
    {"img": "image 33.png", "text": "Drinks & Juices"},
    {"img": "image 34.png", "text": "Sauces & Spreads"},
    {"img": "image 35.png", "text": "Beauty & Cosmetics"},
  ];

  final List<Map<String, String>> household = [
    {"img": "image 36.png", "text": "Cleaning"},
    {"img": "image 37.png", "text": "Laundry"},
    {"img": "image 38.png", "text": "Kitchen"},
    {"img": "image 39.png", "text": "Living Room"},
    {"img": "image 40.png", "text": "Essentials"},
  ];

  CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),

            // Header Section
            Stack(
              children: [
                Container(
                  height: 170,
                  width: double.infinity,
                  color: const Color(0XFFF7CB45),
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          const SizedBox(width: 15),
                          UiHelper.customText(
                            text: "Blinkit",
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontFamily: "bold",
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 15),
                          UiHelper.customText(
                            text: "in 10 minutes",
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "bold",
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 15),
                          UiHelper.customText(
                            text: "Home -",
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontFamily: "bold",
                          ),
                          const SizedBox(width: 5),
                          UiHelper.customText(
                            text: "Bhubaneswar, Odisha",
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Profile Icon
                const Positioned(
                  right: 25,
                  bottom: 110,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, color: Colors.black, size: 20),
                  ),
                ),

                // Search Bar
                Positioned(
                  top: 110,
                  left: 15,
                  right: 15,
                  child: UiHelper.customSearchField(controller: searchController),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Grocery & Kitchen Section
            _buildCategorySection("Grocery & Kitchen", groceryKitchen),

            // Second Grocery Section
            _buildCategorySection("More Groceries", secondGrocery),

            // Snacks & Drinks Section
            _buildCategorySection("Snacks & Drinks", snacksAndDrinks),

            // Household Essentials Section
            _buildCategorySection("Household Essentials", household),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildCategorySection(String title, List<Map<String, String>> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: UiHelper.customText(
            text: title,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
            fontFamily: "bold",
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 120, // Increased height to accommodate text
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 78,
                      width: 71,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0XFFD9EBEB),
                      ),
                      child: UiHelper.customImage(
                        img: items[index]["img"].toString(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 4), // Added spacing
                  SizedBox(
                    width: 75,
                    child: UiHelper.customText(
                      text: items[index]["text"].toString(),
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 10,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
