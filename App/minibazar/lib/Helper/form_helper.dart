import 'package:flutter/material.dart';
import '../Utils/color.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextInputType ? keyboardType;
  final bool? secured;
  final Widget ? suffixIcon;
  final bool? isRequired;
  final TextEditingController? controller;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.keyboardType,
    this.secured,
    this.suffixIcon,
    this.isRequired,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {

    return TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: secured ?? false,
        style: const TextStyle(
          fontWeight: FontWeight.w500,),
        validator: isRequired == true ? (value){
          if(value!.isEmpty){
            return "The field is required";
          }
          return null;
        }: null,
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
