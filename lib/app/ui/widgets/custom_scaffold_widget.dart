import 'package:flood_watch_app/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomScaffoldWidget extends StatelessWidget {
  final String title;
  final VoidCallback onBack;
  final Widget child;

  const CustomScaffoldWidget({super.key, required this.title, required this.onBack, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: appThemeData.primaryColor,
              child: Stack(
                children: [
                  Positioned(
                    top: 40,
                    left: 20,
                    child: IconButton(
                      icon: const Icon(Icons.chevron_left, color: Colors.white),
                      iconSize: 60,
                      onPressed: onBack,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 90.0),
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 48,
                          fontFamily: 'Lobster',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 250,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: SingleChildScrollView(
                child: child,
              ),
            ),
          ),
        ],
      ),
    );
  }
}