part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class LoginEvent extends AuthEvent {
  final LoginModel login;
  final BuildContext context;
  LoginEvent({required this.login, required this.context});
}
