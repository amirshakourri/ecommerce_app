import 'dart:ui';

import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/screens/category_list_screen.dart';
import 'package:ecommerce_app/screens/category_screen.dart';
import 'package:ecommerce_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const Application(),
  );
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: const ProductListScreen(),
        bottomNavigationBar: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              elevation: 0,
              selectedLabelStyle: const TextStyle(
                fontFamily: "SM",
                color: Colors.red,
              ),
              unselectedLabelStyle: const TextStyle(
                  //color: Colors.black,
                  ),
              items: [
                BottomNavigationBarItem(
                  activeIcon:
                      Image.asset('assets/images/icon_basket_active.png'),
                  icon: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: CustomColor.indivatorColor,
                          spreadRadius: -7,
                          blurRadius: 20,
                          offset: const Offset(0.0, 10),
                        )
                      ],
                    ),
                    child: Image.asset('assets/images/icon_basket.png'),
                  ),
                  label: 'خانه',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: CustomColor.indivatorColor,
                          spreadRadius: -7,
                          blurRadius: 20,
                          offset: const Offset(0.0, 10),
                        )
                      ],
                    ),
                    child: Image.asset('assets/images/icon_basket.png'),
                  ),
                  label: 'سبد خرید',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: CustomColor.indivatorColor,
                          spreadRadius: -7,
                          blurRadius: 20,
                          offset: const Offset(0.0, 10),
                        )
                      ],
                    ),
                    child: Image.asset('assets/images/icon_basket.png'),
                  ),
                  label: 'پروفایل',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: CustomColor.indivatorColor,
                          spreadRadius: -7,
                          blurRadius: 20,
                          offset: const Offset(0.0, 10),
                        )
                      ],
                    ),
                    child: Image.asset('assets/images/icon_basket.png'),
                  ),
                  label: 'تنظیمات',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
