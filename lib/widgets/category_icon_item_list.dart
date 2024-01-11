import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/data/model/category.dart';
import 'package:ecommerce_app/widgets/cached_image.dart';
import 'package:flutter/material.dart';

class CategoryHorizontollView extends StatelessWidget {
  final Category category;
  const CategoryHorizontollView(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    String categoryColor = 'ff${category.color}';
    int hexColor = int.parse(categoryColor, radix: 16);
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              width: 56,
              height: 56,
              decoration: ShapeDecoration(
                color: Color(hexColor),
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
            SizedBox(
              width: 24,
              height: 24,
              child: CachedImage(
                imagesUrl: category.icon,
              ),
            )
          ],
        ),
        const SizedBox(height: 10),
        Text(category.title!, style: const TextStyle(fontFamily: 'SB')),
      ],
    );
  }
}
