import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/data/model/product.dart';
import 'package:ecommerce_app/widgets/cached_image.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem(this.product, {super.key});

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
              //Image.asset('assets/images/iphone.png'),
              SizedBox(
                width: 60,
                height: 60,
                child: CachedImage(
                  imagesUrl: product.thumbnail,
                ),
              ),
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
              Padding(
                padding: const EdgeInsets.only(right: 10.0, bottom: 5),
                child: Text(
                  product.name,
                  style: const TextStyle(
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.price.toString(),
                            style: const TextStyle(
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
