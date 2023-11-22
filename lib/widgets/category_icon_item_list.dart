import 'package:ecommerce_app/constants/colors.dart';
import 'package:flutter/material.dart';
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
