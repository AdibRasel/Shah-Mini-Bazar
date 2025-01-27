import 'package:flutter/material.dart';
import '../Utils/color.dart';

class CustomTextField extends StatelessWidget {
  // final String hintText;
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {

    return TextFormField(
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
            hintText: "Mobile Number",
            filled: true,
            fillColor: AppColors.filedBackground,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                    color: Colors.transparent
                )
            )
        )
    );


  }
}

// 58:00 work