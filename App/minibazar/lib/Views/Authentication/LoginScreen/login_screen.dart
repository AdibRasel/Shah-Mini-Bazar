import 'package:flutter/material.dart';
import 'package:minibazar/GlobalWidgets/custom_button.dart';
import 'package:minibazar/GlobalWidgets/custom_widget.dart';
import 'package:minibazar/Helper/form_helper.dart';
import 'package:minibazar/Utils/color.dart';
import 'package:minibazar/Views/Authentication/RegisterScreen/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: customAppBar(
        context: context
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Column(
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
                ],
              ),
              Column(
                children: [
                  const CustomTextField(
                    hintText: "Email or Mobile Number",
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    hintText: "Password",
                    secured: true,
                    suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.visibility),),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forgot your password?",
                        style: TextStyle(
                          color: AppColors.PrimaryColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),)
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomButtom(buttonTitle: "Login", onTap: (){
                    print("clicked");
                  }),
                  const SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const RegisterScreen(),),);
                    },
                    child: const Text("Create New Account",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16
                      ),),
                  )
                ],
              )

            ],
          
          
          
          ),
        )
      ),

    );
  }
}

// 1 video 39"18