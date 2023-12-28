import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/data/datasource/category_datasource.dart';
import 'package:ecommerce_app/data/model/category.dart';
import 'package:ecommerce_app/di/di.dart';
import 'package:ecommerce_app/util/api_exception.dart';

abstract class ICategoryRepository {
  Future<Either<String, List<Category>>> getCategories();
}

class CategoryRepository extends ICategoryRepository {
  final ICategoryDatasource _datasource = locator.get();
  @override
  Future<Either<String, List<Category>>> getCategories() async {
    try {
      var response = await _datasource.getCategories();
      return right(response);
    } on ApiException catch (ex) {
      return left(ex.message ?? 'خطا محتوایه متنی وجود ندارد');
    }
  }
}
