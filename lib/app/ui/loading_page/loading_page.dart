import 'package:flood_watch_app/app/controllers/loading_controller.dart';
import 'package:flood_watch_app/app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadingPage extends GetView<LoadingController> {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: appThemeData.primaryColor,
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'FloodWatch',
              style: TextStyle(
                fontSize: 36,
                color: Colors.white,
                fontFamily: 'Lobster',
              ),
            ),
            SizedBox(height: 50),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
