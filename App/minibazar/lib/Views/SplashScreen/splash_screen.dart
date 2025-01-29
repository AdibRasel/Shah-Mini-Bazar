import 'dart:async';

import 'package:flutter/material.dart';
import 'package:minibazar/BottomNavBarView/bottom_view.dart';
import 'package:minibazar/Utils/color.dart';
import 'package:minibazar/Utils/config.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // 3 seconds delay for splash screen
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => const BottomBarScreen()),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/shoppingCar.gif',
              height: 200,
              width: 200,
            ),
            Text(
              AppConfig.AppName,
              style: TextStyle(
                color: AppColors.PrimaryColor,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
