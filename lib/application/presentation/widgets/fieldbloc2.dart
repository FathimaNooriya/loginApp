import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/color_and_font.dart';
import '../../business_logic/bloc/auth_bloc.dart';

class FieldBloc2 extends StatelessWidget {
  const FieldBloc2({
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
            "Password",
            style: ColorAndFont.smallText,
          ),
        ),
        TextFormField(
          controller:
              context.read<AuthBloc>().passwordController,
          validator: (value) {
            String password = context
                .read<AuthBloc>()
                .passwordController
                .text;
            if (password == "" || password.length < 6) {
              return "Enter a valid password";
            }
            return null;
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


