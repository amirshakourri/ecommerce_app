import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/data/model/banner.dart';


abstract class HomeState {}

class HomeLodingState extends HomeState {}

class HomeInitState extends HomeState {}

class HomeRequsetSuccessState extends HomeState {
  Either<String, List<Banners>> bannerList;
  HomeRequsetSuccessState(this.bannerList);
}
