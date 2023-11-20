import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/widgets/banner_slider.dart';
import 'package:ecommerce_app/widgets/product_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backgroundScreenColor,
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
                          'جستوجوی محصولات',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontFamily: 'SM',
                            color: CustomColor.greyColor,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'assets/images/icon_search.png',
                        color: CustomColor.indivatorColor,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: BannerSlider(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 44.0,
                  right: 44,
                  bottom: 20,
                  top: 32,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'دسته بندی',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'SM',
                        color: CustomColor.greyColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(right: 44.0),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: CategoryHorizontollView(),
                      );
                    },
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 44.0,
                  right: 44,
                  bottom: 20,
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/icon_left_categroy.png'),
                    const SizedBox(width: 10),
                    Text(
                      'مشاهده همه',
                      style: TextStyle(
                        fontFamily: 'SM',
                        color: CustomColor.indivatorColor,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'پر فروش ترین ها',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'SM',
                        color: CustomColor.greyColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(right: 44.0),
                child: SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) => const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: ProductItem(),
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 44.0,
                  right: 44,
                  bottom: 20,
                  top: 32,
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/icon_left_categroy.png'),
                    const SizedBox(width: 10),
                    Text(
                      'مشاهده همه',
                      style: TextStyle(
                        fontFamily: 'SM',
                        color: CustomColor.indivatorColor,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'پربازدید ترین',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'SM',
                        color: CustomColor.greyColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(right: 44.0),
                child: SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) => const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: ProductItem(),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryHorizontollView extends StatelessWidget {
  const CategoryHorizontollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              width: 56,
              height: 56,
              decoration: ShapeDecoration(
                color: CustomColor.indivatorColor,
                shadows: [
                  BoxShadow(
                    color: CustomColor.indivatorColor,
                    spreadRadius: -18,
                    blurRadius: 25,
                    offset: const Offset(0, 20),
                  ),
                ],
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
              ),
            ),
            const Icon(
              Icons.alarm_add,
              color: Colors.white,
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Text('هشدار', style: TextStyle(fontFamily: 'SB')),
      ],
    );
  }
}
