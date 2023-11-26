import 'package:dotted_line/dotted_line.dart';
import 'package:ecommerce_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backgroundScreenColor,
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 46, right: 46, bottom: 32),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
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
                              'سبد خرید',
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
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return const CardItem();
                    },
                    childCount: 10,
                  ),
                ),
                const SliverPadding(
                  padding: EdgeInsets.only(
                    bottom: 60,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 44, left: 44, bottom: 10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 53,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor.greenColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'ادامه فراید خرید',
                    style: TextStyle(
                      fontFamily: "SM",
                      fontSize: 12,
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

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 44, right: 44, bottom: 20),
      height: 249,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          )),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Directionality(
                          textDirection: TextDirection.rtl,
                          child: Text(
                            'ایفون 13 پرو مکس دو سیم کارت',
                            style: TextStyle(
                              fontFamily: 'SB',
                              fontSize: 16,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'گارانتی 18 ماه مدیا پردازش',
                          style: TextStyle(
                            fontFamily: 'SM',
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                '2,000,000',
                                style: TextStyle(
                                  fontFamily: 'SM',
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                              const Text(
                                'تومان',
                                style: TextStyle(
                                  fontFamily: 'SM',
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(width: 2),
                              Container(
                                alignment: AlignmentDirectional.center,
                                height: 20,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: CustomColor.redColor,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Text(
                                  '%3',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontFamily: 'SM',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Wrap(
                          textDirection: TextDirection.rtl,
                          children: [
                            OptionsCheep(),
                            SizedBox(width: 5),
                            ProductColorChnager(),
                          ],
                        ),
                        const SizedBox(height: 5),
                        const Wrap(
                          textDirection: TextDirection.rtl,
                          children: [
                            ProductCount(),
                            SizedBox(width: 5),
                            ProductSave(),
                            SizedBox(width: 5),
                            ProductRemove(),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.asset("assets/images/iphone.png"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: DottedLine(
              lineThickness: 2,
              dashLength: 8,
              dashColor: Colors.grey.withOpacity(0.3),
              dashGapLength: 3,
              dashGapColor: Colors.transparent,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'تومان',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "SB",
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  '20,000,000',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "SB",
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class OptionsCheep extends StatelessWidget {
  const OptionsCheep({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/icon_options.png'),
            const SizedBox(width: 10),
            const Text(
              '256 گیگابایت',
              style: TextStyle(
                fontSize: 12,
                fontFamily: "SM",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductColorChnager extends StatelessWidget {
  const ProductColorChnager({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/icon_options.png'),
            const SizedBox(width: 10),
            const Text(
              'آبی آسمانی',
              style: TextStyle(
                fontSize: 12,
                fontFamily: "SM",
              ),
            ),
            Container(
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                color: Colors.indigoAccent,
                shape: BoxShape.circle,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProductCount extends StatelessWidget {
  const ProductCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/icon_options.png'),
            const SizedBox(width: 6),
            const Text(
              '1',
              style: TextStyle(
                fontSize: 12,
                fontFamily: "SM",
              ),
            ),
            const SizedBox(width: 4),
          ],
        ),
      ),
    );
  }
}

class ProductSave extends StatelessWidget {
  const ProductSave({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(width: 5),
            const Text(
              'ذخیره',
              style: TextStyle(
                fontSize: 12,
                fontFamily: "SM",
              ),
            ),
            const SizedBox(width: 5),
            Image.asset(
              'assets/images/active_fav_product.png',
              width: 15,
            )
          ],
        ),
      ),
    );
  }
}

class ProductRemove extends StatelessWidget {
  const ProductRemove({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(width: 5),
            const Text(
              'آبی آسمانی',
              style: TextStyle(
                fontSize: 12,
                fontFamily: "SM",
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Image.asset(
              'assets/images/icon_trash.png',
              width: 15,
            ),
          ],
        ),
      ),
    );
  }
}
