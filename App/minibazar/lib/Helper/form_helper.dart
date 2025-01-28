import 'package:flutter/material.dart';
import '../Utils/color.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextInputType ? keyboardType;
  final bool? secured;
  final Widget ? suffixIcon;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.keyboardType,
    this.secured,
    this.suffixIcon
  });

  @override
  Widget build(BuildContext context) {

    return TextFormField(
        keyboardType: keyboardType,
        obscureText: secured ?? false,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.black45,
            ),
            filled: true,
            fillColor: AppColors.filedBackground,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                    color: Colors.transparent
                )
            ),
            prefixIcon: suffixIcon,
        )
    );


  }
}
