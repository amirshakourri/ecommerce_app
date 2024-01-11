import 'package:ecommerce_app/bloc/home/home_bloc.dart';
import 'package:ecommerce_app/bloc/home/home_event.dart';
import 'package:ecommerce_app/bloc/home/home_state.dart';
import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/data/model/banner.dart';
import 'package:ecommerce_app/data/model/category.dart';
import 'package:ecommerce_app/data/model/product.dart';
import 'package:ecommerce_app/widgets/banner_slider.dart';
import 'package:ecommerce_app/widgets/category_icon_item_list.dart';
import 'package:ecommerce_app/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    BlocProvider.of<HomeBloc>(context).add(HomeGetInitilzeData());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backgroundScreenColor,
      body: SafeArea(child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              if (state is HomeLodingState) ...[
                const SliverToBoxAdapter(
                  child: CircularProgressIndicator(),
                ),
              ],
              //! Search box
              const _GetSearchBox(),
              if (state is HomeRequsetSuccessState) ...[
                state.bannerList.fold(
                  (l) {
                    return SliverToBoxAdapter(
                      child: Text(l),
                    );
                  },
                  (listBanner) {
                    //! Banner
                    return _GetBanner(listBanner);
                  },
                ),
              ],

              //! Category Title/List of Category
              const _GetCategoryTitle(),
              if (state is HomeRequsetSuccessState) ...[
                state.categoryList.fold(
                  (l) {
                    return SliverToBoxAdapter(
                      child: Text(l),
                    );
                  },
                  (r) {
                    return _GetCategoryItem(r);
                  },
                )
              ],

              //! Most Sells Product Title/Product
              const _GetMostSellsProductTitle(),
              if (state is HomeRequsetSuccessState) ...[
                state.productList.fold(
                  (l) {
                    return SliverToBoxAdapter(
                      child: Text(l),
                    );
                  },
                  (productList) {
                    return _GetMostSellsProduct(productList);
                  },
                )
              ],

              //! Most View Product Title/Product
              const _GetMostViewProductTitle(),
              if (state is HomeRequsetSuccessState) ...[
                state.productList.fold(
                  (l) {
                    return SliverToBoxAdapter(
                      child: Text(l),
                    );
                  },
                  (productList) {
                    return _GetMostViewProduct(productList);
                  },
                )
              ],
            ],
          );
        },
      )),
    );
  }
}

class _GetMostViewProduct extends StatelessWidget {
  final List<Product> productList;
  const _GetMostViewProduct(this.productList);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(right: 44.0),
        child: SizedBox(
          height: 200,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productList.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: ProductItem(productList[index]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _GetMostViewProductTitle extends StatelessWidget {
  const _GetMostViewProductTitle();

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
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
    );
  }
}

class _GetMostSellsProduct extends StatelessWidget {
  final List<Product> productList;
  const _GetMostSellsProduct(this.productList);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(right: 44.0),
        child: SizedBox(
          height: 200,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productList.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: ProductItem(productList[index]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _GetMostSellsProductTitle extends StatelessWidget {
  const _GetMostSellsProductTitle();

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
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
    );
  }
}

class _GetCategoryItem extends StatelessWidget {
  final List<Category> listCategories;
  const _GetCategoryItem(this.listCategories);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 100,
        child: Padding(
          padding: const EdgeInsets.only(right: 44.0),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listCategories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: CategoryHorizontollView(listCategories[index]),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _GetCategoryTitle extends StatelessWidget {
  const _GetCategoryTitle();

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
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
    );
  }
}

class _GetBanner extends StatelessWidget {
  final List<Banners> banners;
  const _GetBanner(this.banners);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BannerSlider(banners),
    );
  }
}

class _GetSearchBox extends StatelessWidget {
  const _GetSearchBox();

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 46, right: 46, bottom: 32),
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
    );
  }
}
