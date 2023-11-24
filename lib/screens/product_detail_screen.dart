import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

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
                            'ایفون',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Sb',
                              color: CustomColor.indivatorColor,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/images/icon_back.png',
                          color: CustomColor.indivatorColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'SE 2020 ایفون',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontFamily: 'SB'),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 44.0),
                child: Container(
                  height: 284,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical: 10,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/icon_star.png',
                              ),
                              const Text('4.2'),
                              const Spacer(),
                              SizedBox(
                                height: double.infinity,
                                child: Image.asset(
                                  'assets/images/iphone.png',
                                ),
                              ),
                              const Spacer(),
                              Image.asset(
                                'assets/images/icon_favorite_deactive.png',
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40.0),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                height: 70,
                                width: 70,
                                margin: const EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: CustomColor.greyColor,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6),
                                  child: Image.asset(
                                    'assets/images/iphone.png',
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 44, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'انتخاب رنگ',
                      style: TextStyle(
                        fontFamily: "SM",
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: 26,
                          width: 26,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: 26,
                          width: 26,
                          decoration: BoxDecoration(
                            color: CustomColor.redColor,
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: 26,
                          width: 66,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Text(
                            'مشکی',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "dana",
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'انتخاب حافظه دستگاه',
                      style: TextStyle(
                        fontFamily: "SM",
                      ),
                    ),
                    const SizedBox(height: 10),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            height: 26,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(width: 1, color: Colors.grey),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 22),
                              child: Center(
                                child: Text(
                                  '128',
                                  style: TextStyle(fontFamily: 'SB'),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            height: 26,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(width: 1, color: Colors.grey),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 22),
                              child: Center(
                                child: Text(
                                  '256',
                                  style: TextStyle(fontFamily: 'SM'),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            height: 26,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(width: 1, color: Colors.grey),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 22),
                              child: Center(
                                child: Text(
                                  '512',
                                  style: TextStyle(fontFamily: 'SM'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 44, right: 44, bottom: 10),
                child: Container(
                  height: 46,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        children: [
                          const Text(
                            'مشخصات فنی:',
                            style: TextStyle(
                              fontFamily: "SB",
                            ),
                          ),
                          const Spacer(),
                          Text(
                            'مشاهده',
                            style: TextStyle(
                              fontFamily: "SM",
                              color: CustomColor.indivatorColor,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Image.asset('assets/images/icon_left_categroy.png'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 44, right: 44, bottom: 10),
                child: Container(
                  height: 46,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        children: [
                          const Text(
                            'توضیحات فنی:',
                            style: TextStyle(
                              fontFamily: "SB",
                            ),
                          ),
                          const Spacer(),
                          Text(
                            'مشاهده',
                            style: TextStyle(
                              fontFamily: "SM",
                              color: CustomColor.indivatorColor,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Image.asset('assets/images/icon_left_categroy.png'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 44, right: 44, bottom: 10),
                child: Container(
                  height: 46,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        children: [
                          const Text(
                            'نظرات کاربران:',
                            style: TextStyle(
                              fontFamily: "SB",
                            ),
                          ),
                          const Spacer(),
                          Text(
                            'مشاهده',
                            style: TextStyle(
                              fontFamily: "SM",
                              color: CustomColor.indivatorColor,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Image.asset('assets/images/icon_left_categroy.png'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
