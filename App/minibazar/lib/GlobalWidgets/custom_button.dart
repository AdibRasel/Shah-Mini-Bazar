import 'package:flutter/material.dart';
import 'package:minibazar/Utils/color.dart';


class CustomButtom extends StatelessWidget {
  final String buttonTitle;
  final void Function()? onTap;
  const CustomButtom({
    super.key,
    required this.buttonTitle,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
            color: AppColors.PrimaryColor,
            borderRadius: BorderRadius.circular(15),),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal:  15,
              vertical: 15,
            ),
            child: Center(
              child: Text(buttonTitle,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          )
      ),
    )
    ;
  }
}
