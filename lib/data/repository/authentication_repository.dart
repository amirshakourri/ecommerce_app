import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/di/di.dart';
import 'package:ecommerce_app/util/api_exception.dart';
import 'package:ecommerce_app/util/auth_maneger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../datasource/authentication_datasource.dart';

abstract class IAuthRepository {
  Future<Either<String, String>> register(
    String username,
    String password,
    String passwordConfirm,
  );
  Future<Either<String, String>> login(
    String username,
    String password,
  );
}

class AuthenticationRepository implements IAuthRepository {
  final IAuthenticationDatasource _datasource = locator.get();
  // ignore: unused_field
  final SharedPreferences _sharedPref = locator.get();

  @override
  Future<Either<String, String>> register(
      String username, String password, String passwordConfirm) async {
    try {
      await _datasource.register(username, password, passwordConfirm);
      return right('ثبت نام انجام شد');
    } on ApiException catch (ex) {
      return left(ex.message ?? 'خطا محتوای متنی ندارد');
    }
  }

  @override
  Future<Either<String, String>> login(String username, String password) async {
    try {
      String token = await _datasource.login(username, password);

      if (token.isNotEmpty) {
        AuthManager.saveToken(token);
        return right('شما وارد شدید');
      } else {
        return left('خطایی در ورود پیش امده');
      }
    } on ApiException catch (ex) {
      return left("${ex.message}");
    }
  }
}
