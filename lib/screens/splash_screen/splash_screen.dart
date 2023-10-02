import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vibgyor/screens/splash_screen/controller.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({super.key});

  final SplashScreenController splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Visual-Layer.jpeg'),
          ),
        ),
      ),
    );
  }
}
