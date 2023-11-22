import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/widgets/category_icon_item_list.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backgroundScreenColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 46, right: 46, bottom: 32),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/icon_apple_blue.png',
                      ),
                      Expanded(
                        child: Text(
                          'حساب کاربری',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Sb',
                            color: CustomColor.indivatorColor,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                const Text(
                  'امیر حسین فرید شکوری',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'SB',
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '09330348792',
                  style: TextStyle(
                    color: CustomColor.greyColor,
                    fontFamily: 'SM',
                    fontSize: 10,
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
            const Wrap(
              spacing: 40,
              runSpacing: 15,
              children: [
                CategoryHorizontollView(),
                CategoryHorizontollView(),
                CategoryHorizontollView(),
                CategoryHorizontollView(),
                CategoryHorizontollView(),
                CategoryHorizontollView(),
                CategoryHorizontollView(),
                CategoryHorizontollView(),
                CategoryHorizontollView(),
                CategoryHorizontollView(),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                const SizedBox(height: 280),
                Text(
                  'اپل شاپ',
                  style: TextStyle(
                    color: CustomColor.greyColor,
                    fontFamily: 'SB',
                    fontSize: 10,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  'v1.0.00',
                  style: TextStyle(
                    color: CustomColor.greyColor,
                    fontFamily: 'GB',
                    fontSize: 10,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  'instagram.com/amirshacour',
                  style: TextStyle(
                    color: CustomColor.greyColor,
                    fontFamily: 'SM',
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
