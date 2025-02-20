import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

  CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 170,
                width: double.infinity,
                color: Color(0XFFF7CB45),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        SizedBox(width: 15),
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
                        SizedBox(width: 15),
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
                        SizedBox(width: 15),
                        UiHelper.customText(
                          text: "Home -",
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: "bold",
                        ),
                        SizedBox(width: 5),
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
              Positioned(
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
                  child: UiHelper.customSearchField(controller: controller))
            ],
          ),
          SizedBox(height: 20),
          UiHelper.customImage(img: "cart_image.png"),
          SizedBox(height: 20,),
          UiHelper.customText(text: "Reordering will be easy",
              color: Color(0XFF000000),
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: "bold"),
          SizedBox(height: 10,),
          UiHelper.customText(text: "Items you order will show up here",
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 12),
          SizedBox(height: 40,),
          Row(
            children: [
              SizedBox(width: 15,),
              UiHelper.customText(text: "Bestsellers",
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: "bold"),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 15,),
              Stack(
                children: [
                  UiHelper.customImage(img: "cart_lassi.png"),
                  Positioned(child: Padding(
                    padding: EdgeInsets.only(top: 100),
                    child: UiHelper.customButton((){}, "Add"),),)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
