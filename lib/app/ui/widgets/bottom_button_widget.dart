import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomButtonWidget extends StatelessWidget {
  final RxBool disabled;
  final String text;
  final VoidCallback onPressed;

  const BottomButtonWidget({super.key, required this.text, required this.onPressed, required this.disabled});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SizedBox(
        width: double.infinity,
        height: 50.0,
        child: ElevatedButton(
          onPressed: disabled.value ? null : onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: disabled.value ? Colors.grey : Colors.blueAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white, // Cor do texto
              fontFamily: 'Raleway',
              fontSize: 18,
            ),
          ),
        ),
      );
    });
  }
}