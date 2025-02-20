import 'package:blinkit/repository/screens/bottomnav/bottomnavscreen.dart';
import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                UiHelper.customImage(img: "Blinkit Onboarding Screen.png"),
                SizedBox(height: 30),
                UiHelper.customImage(img: "BlinkitLogoLoginPage.png"),
                SizedBox(height: 20),
                UiHelper.customText(
                  text: "India's Last Minute Marketplace",
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: "bold",
                ),
                SizedBox(height: 20),
                Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(16),
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        UiHelper.customText(
                          text: "Amlan",
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                        SizedBox(height: 5),
                        UiHelper.customText(
                          text: "9348746844",
                          color: Color(0XFF9C9C9C),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: "bold",
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                          height: 48,
                          width: 295,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0XFFE23744),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min, // Prevent Row from expanding unnecessarily
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                UiHelper.customText(
                                  text: "Login with",
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  fontFamily: "bold",
                                ),
                                SizedBox(width: 8),
                                UiHelper.customText(text: "Zomato", color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18, fontFamily: "bold")
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 10),
                        UiHelper.customText(
                          text: "Access your saved address from Zomato automatically",
                          color: Color(0XFF9C9C9C),
                          fontWeight: FontWeight.normal,
                          fontSize: 8,
                        ),
                        SizedBox(height: 15),
                        UiHelper.customText(
                          text: "Login with phone number",
                          color: Colors.green,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20), // Added spacing to avoid overflow
              ],
            ),
          ),
        ),
      ),
    );
  }
}
