import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/widgets/product_item.dart';
import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 46, right: 46, bottom: 32),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      Image.asset(
                        'assets/images/icon_apple_blue.png',
                      ),
                      Expanded(
                        child: Text(
                          'پرفروش ترین ها',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'SB',
                            color: CustomColor.indivatorColor,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(
                horizontal: 44,
              ),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  childCount: 10,
                  (context, index) {
                    return const ProductItem();
                  },
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 4,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
