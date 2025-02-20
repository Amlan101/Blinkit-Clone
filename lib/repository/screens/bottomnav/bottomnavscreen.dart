import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

import '../cart/cartscreen.dart';
import '../category/categoryscreen.dart';
import '../home/homescreen.dart';
import '../print/printscreen.dart';

class BottomNavScreen extends StatefulWidget{
  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    PrintScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: UiHelper.customImage(img: "home 1.png"), label: "Home"),
        BottomNavigationBarItem(icon: UiHelper.customImage(img: "shopping-bag 1.png"), label: "Cart"),
        BottomNavigationBarItem(icon: UiHelper.customImage(img: "category 1.png"), label: "Category"),
        BottomNavigationBarItem(icon: UiHelper.customImage(img: "printer 1.png"), label: "Print"),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
      )
    );
  }
}