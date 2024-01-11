import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/data/model/banner.dart';
import 'package:ecommerce_app/data/model/category.dart';
import 'package:ecommerce_app/data/model/product.dart';

abstract class HomeState {}

class HomeLodingState extends HomeState {}

class HomeInitState extends HomeState {}

class HomeRequsetSuccessState extends HomeState {
  Either<String, List<Banners>> bannerList;
  Either<String, List<Category>> categoryList;
  Either<String, List<Product>> productList;
  HomeRequsetSuccessState(this.bannerList, this.categoryList, this.productList);
}
