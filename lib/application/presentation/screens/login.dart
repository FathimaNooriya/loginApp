import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loginapp/core/color_and_font.dart';
import 'package:loginapp/core/paddings.dart';
import '../../business_logic/bloc/auth_bloc.dart';
import '../widgets/button_field.dart';
import '../widgets/fieldBloc1.dart';
import '../widgets/fieldbloc2.dart';
import '../widgets/tittle.dart';

class UserLoginScreen extends StatelessWidget {
  const UserLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: ColorAndFont.backGround),
        child: const Center(
          child: SignInBlock(),
        ),
      ),
    );
  }
}

class SignInBlock extends StatelessWidget {
  const SignInBlock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 400,
      decoration: BoxDecoration(
        color: const Color.fromARGB(78, 94, 93, 93),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: Paddings.myPadding,
        child: Form(
          key: context.read<AuthBloc>().siginInKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Tittles(tittle: "Sign in"),
              Padding(
                padding: Paddings.myPadding,
                child: FieldBloc(),
              ),
              Padding(
                padding: Paddings.myPadding,
                child: FieldBloc2(),
              ),
              ButtonField()
            ],
          ),
        ),
      ),
    );
  }
}
