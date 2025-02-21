import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class PrintScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  PrintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFBF0CE),
      body: Column(
        children: [
          SizedBox(height: 40),
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
          SizedBox(height: 30),
          UiHelper.customText(
            text: "Print Store",
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
          UiHelper.customText(
            text: "Blinkit ensures secure prints at every stage",
            color: Color(0XFF9C9C9C),
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          SizedBox(height: 40),
          Stack(
            children: [
              Container(
                height: 180,
                width: 361,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.customText(
                          text: "Documents",
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ],
                    ),
                    SizedBox(height: 2),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.customImage(img: "star.png"),
                        SizedBox(width: 7),
                        UiHelper.customText(
                          text: "Price starting at rs 3/page",
                          color: Color(0XFF9C9C9C),
                          fontWeight: FontWeight.normal,
                          fontSize: 13,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.customImage(img: "star.png"),
                        SizedBox(width: 7),
                        UiHelper.customText(
                          text: "Paper quality: 70 GSM",
                          color: Color(0XFF9C9C9C),
                          fontWeight: FontWeight.normal,
                          fontSize: 13,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.customImage(img: "star.png"),
                        SizedBox(width: 7),
                        UiHelper.customText(
                          text: "Single side prints",
                          color: Color(0XFF9C9C9C),
                          fontWeight: FontWeight.normal,
                          fontSize: 13,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        SizedBox(
                          height: 40,
                          width: 125,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0XFF27AF34),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Text(
                              "Upload Files",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                child: UiHelper.customImage(img: "image 62.png"),
                right: 20,
                bottom: 40,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
