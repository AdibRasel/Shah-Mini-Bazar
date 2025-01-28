import 'package:flutter/material.dart';
import 'package:minibazar/GlobalWidgets/custom_button.dart';
import 'package:minibazar/GlobalWidgets/custom_widget.dart';
import 'package:minibazar/Helper/form_helper.dart';
import 'package:minibazar/Utils/color.dart';
import 'package:minibazar/Views/Authentication/LoginScreen/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context: context),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text("Create Account",
                    style: TextStyle(
                      color: AppColors.PrimaryColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),),
                    Text("Create an account so you can explore all the existing offer",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black.withOpacity(.5),
                          fontSize: 15,
                      ),),
                  ],
                ),
                Column(
                  children: [
                    CustomTextField(hintText: "Full Name"),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomTextField(hintText: "Mobile Number Or Email"),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomTextField(hintText: "Address"),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomTextField(hintText: "Password", secured: true, suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.visibility)),),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomTextField(hintText: "Confirm Password", secured: true, suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.visibility)),),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomButtom(buttonTitle: "Sign Up"),
                    const SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_) => const LoginScreen(),),);
                      },
                      child: const Text("Already Have An Account",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}