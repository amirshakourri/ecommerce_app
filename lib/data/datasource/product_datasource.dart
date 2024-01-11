import 'package:dio/dio.dart';
import 'package:ecommerce_app/data/model/product.dart';
import 'package:ecommerce_app/di/di.dart';
import 'package:ecommerce_app/util/api_exception.dart';

abstract class IProductDatasource {
  Future<List<Product>> getProducts();
}

class ProductRemoteDatasource extends IProductDatasource {
  final Dio _dio = locator.get();

  @override
  Future<List<Product>> getProducts() async {
    try {
      var response = await _dio.get('collections/products/records');
      print('try');
      return response.data['items']
          .map<Product>((jsonObject) => Product.fromJson(jsonObject))
          .toList();
    } on DioException catch (ex) {
      print('Dio');
      throw ApiException(ex.response?.statusCode, ex.response?.data['message']);
    } catch (ex) {
      print('catch');
      throw ApiException(0, 'unknown error');
    }
  }
}
