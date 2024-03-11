import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loginapp/core/color_and_font.dart';
import '../../business_logic/bloc/auth_bloc.dart';

class FieldBloc extends StatelessWidget {
  const FieldBloc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 5),
          child: Text(
            "Email address",
            style: ColorAndFont.smallText,
          ),
        ),
        TextFormField(
          controller:
              context.read<AuthBloc>().emailController,
          validator: (value) {
            String email =
                context.read<AuthBloc>().emailController.text;
            final emailRegex = RegExp(
                r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$');
        
            if (email == "" || !emailRegex.hasMatch(email)) {
              return "Enter a valid Email address";
            } else {
              return null;
            }
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                width: 2,
                color: ColorAndFont.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

