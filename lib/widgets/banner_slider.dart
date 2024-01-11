import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/data/model/banner.dart';
import 'package:ecommerce_app/widgets/cached_image.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerSlider extends StatelessWidget {
  final List<Banners> bannerList;
  const BannerSlider(this.bannerList, {super.key});

  @override
  Widget build(BuildContext context) {
    var controller = PageController(viewportFraction: 0.9);
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        SizedBox(
          height: 180,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: PageView.builder(
              controller: controller,
              itemCount: bannerList.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: CachedImage(
                    imagesUrl: bannerList[index].thumbnail,
                  ),
                );
              },
            ),
          ),
        ),
        Positioned(
          bottom: 16,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: SmoothPageIndicator(
              controller: controller, // PageController
              count: 4,
              effect: ExpandingDotsEffect(
                dotHeight: 8,
                dotWidth: 8,
                activeDotColor: CustomColor.indivatorColor,
                dotColor: Colors.white70,
              ), // your preferred effect
            ),
          ),
        ),
      ],
    );
  }
}
