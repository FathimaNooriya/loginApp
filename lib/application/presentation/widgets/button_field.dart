import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/model/login_model.dart';
import '../../business_logic/bloc/auth_bloc.dart';
import 'button.dart';

class ButtonField extends StatelessWidget {
  const ButtonField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
      if (state is AuthSuccess) {
        Navigator.of(context).pushNamed("/home");
      }
    }, builder: (context, state) {
      if (state is AuthLoading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else {
        return Button1(
            buttonText: "Sign in",
            buttonPressed: () {
              final bool val =
                  context.read<AuthBloc>().siginInKey.currentState!.validate();
              if (val) {
                context.read<AuthBloc>().add(LoginEvent(
                    login: LoginModel(
                        email: context.read<AuthBloc>().emailController.text,
                        password:
                            context.read<AuthBloc>().passwordController.text),
                    context: context));
              } else {
                return;
              }
            });
      }
    });
  }
}
