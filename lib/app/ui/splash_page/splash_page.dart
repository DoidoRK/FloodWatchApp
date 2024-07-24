import 'package:flood_watch_app/app/controllers/splash_controller.dart';
import 'package:flood_watch_app/app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appThemeData.primaryColor,
      body: const Center(
        child: Text(
          'FloodWatch',
          style: TextStyle(
            fontSize: 36,
            color: Colors.white,
            fontFamily: 'Lobster',
          ),
        ),
      ),
    );
  }
}