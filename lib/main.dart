import 'dart:ui';

import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/screens/category_list_screen.dart';
import 'package:ecommerce_app/screens/category_screen.dart';
import 'package:ecommerce_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'screens/profile_screen.dart';

void main() {
  runApp(
    const Application(),
  );
}

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  int sellcetedBottomNavigationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //appBar: AppBar(),
        body: IndexedStack(
          index: sellcetedBottomNavigationIndex,
          children: getScreen(),
        ),
        bottomNavigationBar: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: BottomNavigationBar(
              onTap: (int index) {
                setState(() {
                  sellcetedBottomNavigationIndex = index;
                });
              },
              currentIndex: sellcetedBottomNavigationIndex,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              elevation: 0,
              selectedLabelStyle: TextStyle(
                fontFamily: "SB",
                color: CustomColor.indivatorColor,
                fontSize: 10,
              ),
              unselectedLabelStyle: const TextStyle(
                fontFamily: "SB",
                color: Colors.black,
                fontSize: 10,
              ),
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/icon_profile.png'),
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Container(
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
                      child:
                          Image.asset('assets/images/icon_profile_active.png'),
                    ),
                  ),
                  label: 'حساب کاربری',
                ),
                BottomNavigationBarItem(
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Container(
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
                      child:
                          Image.asset('assets/images/icon_basket_active.png'),
                    ),
                  ),
                  icon: Image.asset('assets/images/icon_basket.png'),
                  label: 'سبد خرید',
                ),
                BottomNavigationBarItem(
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Container(
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
                      child:
                          Image.asset('assets/images/icon_category_active.png'),
                    ),
                  ),
                  icon: Image.asset('assets/images/icon_category.png'),
                  label: 'پروفایل',
                ),
                BottomNavigationBarItem(
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Container(
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
                      child: Image.asset('assets/images/icon_home_active.png'),
                    ),
                  ),
                  icon: Image.asset('assets/images/icon_home.png'),
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

List<Widget> getScreen() {
  return <Widget>[
    const ProductListScreen(),
    const CategoryScreen(),
    const HomeScreen(),
    const ProfileScreen(),
  ];
}
