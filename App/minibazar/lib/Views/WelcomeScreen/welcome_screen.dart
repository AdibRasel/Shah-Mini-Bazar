import 'package:flutter/material.dart';
import 'package:minibazar/Utils/color.dart';
import 'package:minibazar/Views/Authentication/LoginScreen/login_screen.dart';
import 'package:minibazar/Views/Authentication/RegisterScreen/register_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFA5CBE0),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/get_start.png'),


              Container(
                child: const Column(
                  children: [
                    Text(
                      "Shaha Mini Bazar",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "your online shopping partner.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),

              // const SizedBox(
              //   height: 50,
              // ),

              Container(
                  height: 60,
                  width: double.infinity,
                  child: Row(
                    children: [


                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                          },
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                                color: AppColors.PrimaryColor,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.PrimaryColor.withOpacity(.3),
                                    blurRadius: 3,
                                  )
                                ]),
                            child: const Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ),
                      


                      const SizedBox(
                        width: 10,
                      ),


                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen()));
                          },
                          child: Container(
                            height: 60,
                            child: const Center(
                              child: Text(
                                "Register",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      )
                    
                    
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
