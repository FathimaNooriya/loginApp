import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loginapp/core/color_and_font.dart';
import 'package:loginapp/core/paddings.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../business_logic/bloc/auth_bloc.dart';
import '../widgets/button_field.dart';
import '../widgets/fieldBloc1.dart';
import '../widgets/fieldbloc2.dart';
import '../widgets/tittle.dart';

class UserLoginScreen extends StatelessWidget {
  const UserLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) =>
          const BackgroundContainer(heightSignIn: 500, widthSignIn: 400),
      tablet: (p0) =>
          const BackgroundContainer(heightSignIn: 450, widthSignIn: 350),
      mobile: (p0) => const BackgroundContainer(
          heightSignIn: double.infinity, widthSignIn: double.infinity),
    );
  }
}

class BackgroundContainer extends StatelessWidget {
  final double heightSignIn;
  final double widthSignIn;
  const BackgroundContainer({
    super.key,
    required this.heightSignIn,
    required this.widthSignIn,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: ColorAndFont.backGround),
        child: Center(
          child: SignInBlock(height: heightSignIn, width: widthSignIn),
        ),
      ),
    );
  }
}

class SignInBlock extends StatelessWidget {
  final double height;
  final double width;
  const SignInBlock({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
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
