import 'package:ecommerce_app/constants/colors.dart';
import 'package:flutter/material.dart';
class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 216,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(22),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        //crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(height: 10),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Expanded(
                child: Container(),
              ),
              Image.asset('assets/images/iphone.png'),
              Positioned(
                top: 0,
                right: 10,
                child: Image.asset(
                  'assets/images/active_fav_product.png',
                ),
              ),
              Positioned(
                bottom: 0,
                left: 5,
                child: Container(
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
              )
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 10.0, bottom: 5),
                child: Text(
                  'ایفون 13 پرو مکس',
                  style: TextStyle(
                    fontFamily: 'SM',
                    fontSize: 14,
                  ),
                ),
              ),
              Container(
                height: 53,
                decoration: BoxDecoration(
                  color: CustomColor.indivatorColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(22),
                    bottomRight: Radius.circular(22),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: CustomColor.indivatorColor,
                      spreadRadius: -15,
                      blurRadius: 25,
                      offset: const Offset(0.0, 15),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text(
                        'تومان',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "SM",
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(width: 9),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '20.000.00',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "SM",
                              fontSize: 12,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          Text(
                            '20.000.00',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "SM",
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 24,
                        child: Image.asset(
                          'assets/images/icon_right_arrow_cricle.png',
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}