import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:minibazar/GlobalWidgets/custom_button.dart';
import 'package:minibazar/GlobalWidgets/custom_widget.dart';
import 'package:minibazar/Helper/form_helper.dart';
import 'package:minibazar/Utils/color.dart';
import 'package:minibazar/Views/Authentication/LoginScreen/login_screen.dart';
import 'package:minibazar/Views/HomeScreen/home_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formState = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;

  final _fullNameController = TextEditingController();
  final _mobileNumberController = TextEditingController();
  final _addressController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool isPasswordSecured = true;

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
                    Text(
                      "Create Account",
                      style: TextStyle(
                          color: AppColors.PrimaryColor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Create an account so you can explore all the existing offer",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black.withOpacity(.5),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Form(
                  key: _formState,
                  child: Column(
                    children: [
                      CustomTextField(
                        hintText: "Full Name",
                        controller: _fullNameController,
                        isRequired: true,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomTextField(
                        hintText: "Mobile Number Or Email",
                        controller: _mobileNumberController,
                        isRequired: true,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomTextField(
                        hintText: "Address",
                        controller: _addressController,
                        isRequired: true,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomTextField(
                        hintText: "Password",
                        controller: _passwordController,
                        isRequired: true,
                        secured: isPasswordSecured,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isPasswordSecured = !isPasswordSecured;
                            });
                          },
                          icon: Icon(isPasswordSecured
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomTextField(
                        hintText: "Confirm Password",
                        controller: _confirmPasswordController,
                        isRequired: true,
                        secured: isPasswordSecured,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isPasswordSecured = !isPasswordSecured;
                            });
                          },
                          icon: Icon(isPasswordSecured
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomButtom(
                        buttonTitle: "Sign Up",
                        onTap: () {
                          if (_formState.currentState!.validate()) {
                            // do something
                            if (_passwordController.text !=
                                _confirmPasswordController.text) {
                              ScaffoldMessenger.of(context).showMaterialBanner(
                                  const SnackBar(
                                          content: Text('Password mismatched'))
                                      as MaterialBanner);
                            } else {
                              try {
                                _auth.createUserWithEmailAndPassword(
                                    email: _emailController.text,
                                    password: _passwordController.text);
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const HomeScreen(),
                                    ),
                                    (route) => false);
                              } catch (e) {
                                ScaffoldMessenger.of(context)
                                    .showMaterialBanner(
                                        SnackBar(content: Text(e.toString()))
                                            as MaterialBanner);
                              }
                            }
                          }
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const LoginScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "Already Have An Account",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
