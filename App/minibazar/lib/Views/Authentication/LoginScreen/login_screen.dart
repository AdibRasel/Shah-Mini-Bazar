import 'package:flutter/material.dart';
import 'package:minibazar/GlobalWidgets/custom_widget.dart';
import 'package:minibazar/Helper/form_helper.dart';
import 'package:minibazar/Utils/color.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: customAppBar(
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Login Here",
                style: TextStyle(
                  color: AppColors.PrimaryColor,
                  fontSize: 35,
                  fontWeight: FontWeight.bold
                ),
              ),
              const Text("Welcome back you've \n been missed!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                ),
              ),

            TextFormField(
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                    hintText: "Password",
                    filled: true,
                    fillColor: AppColors.filedBackground,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Colors.transparent
                        )
                    )
                )
            ),


              const CustomTextField(),

            ],
          ),
        )
      ),

    );
  }
}

// 1 video 39"18