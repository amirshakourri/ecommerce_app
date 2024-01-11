import 'package:dio/dio.dart';
import 'package:ecommerce_app/data/datasource/authentication_datasource.dart';
import 'package:ecommerce_app/data/datasource/banner_datasource.dart';
import 'package:ecommerce_app/data/datasource/category_datasource.dart';
import 'package:ecommerce_app/data/datasource/product_datasource.dart';
import 'package:ecommerce_app/data/repository/authentication_repository.dart';
import 'package:ecommerce_app/data/repository/banner_repository.dart';
import 'package:ecommerce_app/data/repository/category_repository.dart';
import 'package:ecommerce_app/data/repository/product_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

var locator = GetIt.instance;

Future<void> getItInit() async {
  //
  locator.registerSingleton<Dio>(
    // old uri is this  Dio(BaseOptions(baseUrl: "http://startflutter.ir/api/")),
    // in base url with http is make diffrent with https
    Dio(BaseOptions(baseUrl: "https://startflutter.ir/api/")),
  );

  locator.registerSingleton<SharedPreferences>(
      await SharedPreferences.getInstance());

  // datesources
  locator
      .registerFactory<IAuthenticationDatasource>(() => AuthenticationRemote());
  locator
      .registerFactory<ICategoryDatasource>(() => CategoryRemoteDatasourse());
  locator.registerFactory<IBannerDatasource>(() => BannerRemoteDatasource());
  locator.registerFactory<IProductDatasource>(() => ProductRemoteDatasource());
  // repositories
  locator.registerFactory<IAuthRepository>(() => AuthenticationRepository());
  locator.registerFactory<ICategoryRepository>(() => CategoryRepository());
  locator.registerFactory<IBannerRepository>(() => BannerRepository());
  locator.registerFactory<IProductRepository>(() => ProductRepository());
}
