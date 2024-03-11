import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/data/data_sources/login_repository.dart';
import '../../../domain/model/login_model.dart';


part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> siginInKey = GlobalKey<FormState>();
  AuthBloc() : super(AuthInitial()) {
    on<LoginEvent>(login);
  }

  Future<void> login(LoginEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());

    final result = await LoginRepository.login(
        loginModel: LoginModel(
          email: event.login.email,
          password: event.login.password,
        ),
        context: event.context);
    result.contains('You are Logged in')
        ? {
            emit(AuthSuccess(authResults: result)),
            emailController.clear(),
            passwordController.clear(),
          }
        : emit(AuthError(authResults: result));
  }
}
