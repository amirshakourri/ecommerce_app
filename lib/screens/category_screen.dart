import 'package:ecommerce_app/bloc/category/category_bloc.dart';
import 'package:ecommerce_app/bloc/category/category_event.dart';
import 'package:ecommerce_app/bloc/category/category_state.dart';
import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/data/model/category.dart';
import 'package:ecommerce_app/widgets/cached_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  void initState() {
    BlocProvider.of<CategoryBloc>(context).add(CategoryRequestList());
    super.initState();
  }

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
                          'دسته بندی',
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
            BlocBuilder<CategoryBloc, CategoryState>(
              builder: (context, state) {
                if (state is CategoryLodingState) {
                  return const SliverToBoxAdapter(
                    child: Center(child: CircularProgressIndicator()),
                  );
                }
                if (state is CategoryResponseState) {
                  return state.response.fold((l) {
                    return SliverToBoxAdapter(child: Text(l));
                  }, (r) {
                    return _ListCategory(
                      list: r,
                    );
                  });
                }
                return const SliverToBoxAdapter(child: Text('Error'));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _ListCategory extends StatelessWidget {
  final List<Category>? list;
  const _ListCategory({this.list});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(
        horizontal: 44,
      ),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          childCount: list?.length ?? 0,
          (context, index) {
            return CachedImage(imagesUrl: list?[index].thumbnail);
          },
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
