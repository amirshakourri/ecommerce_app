import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/widgets/banner_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: CustomColor.backgroundScreenColor,
        body: SafeArea(
          child: Center(
            child: Container(
              width: 160,
              height: 216,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(22),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Image.asset('assets/images/iphone.png'),
                  const Spacer(),
                  const Text(
                    'ایفون 13 پرو مکس',
                    style: TextStyle(
                      fontFamily: 'SM',
                      fontSize: 14,
                    ),
                  ),
                  const Spacer(),
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
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 44),
//             child: ListView.builder(
//               itemBuilder: (context, index) {
//                 return const Padding(
//                   padding: EdgeInsets.only(left: 20),
//                   child: categoryHorizontollView(),
//                 );
//               },
//               itemCount: 10,
//               scrollDirection: Axis.horizontal,
//             ),
//           ),
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
                    spreadRadius: -9,
                    blurRadius: 30,
                    offset: const Offset(2, 10),
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
