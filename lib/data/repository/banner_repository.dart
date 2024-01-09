import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/data/datasource/banner_datasource.dart';
import 'package:ecommerce_app/data/model/banner.dart';
import 'package:ecommerce_app/di/di.dart';
import 'package:ecommerce_app/util/api_exception.dart';

abstract class IBannerRepository {
  Future<Either<String, List<Banners>>> getBanners();
}

class BannerRepository extends IBannerRepository {
  final IBannerDatasource _datasource = locator.get();

  @override
  Future<Either<String, List<Banners>>> getBanners() async {
    try {
      var response = await _datasource.getBanners();
      return right(response);
    } on ApiException catch (ex) {
      return left(ex.message ?? 'خطا محتوایه متنی وجود ندارد');
    }
  }
}
