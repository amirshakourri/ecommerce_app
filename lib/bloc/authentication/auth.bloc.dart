import 'package:ecommerce_app/bloc/authentication/auth.state.dart';
import 'package:ecommerce_app/data/repository/authentication_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../di/di.dart';
import 'auth.event.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _repository = locator.get();
  AuthBloc() : super(AuthInitiateState()) {
    on<AuthLoginRequest>(
      (event, emit) async {
        emit(AuthLoadingState());
        var response = await _repository.login(event.username, event.password);
        emit(
          AuthResponseState(response),
        );
      },
    );
  }
}
