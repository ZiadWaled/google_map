import 'package:flutter/material.dart';
import 'package:work/const.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      icon: const Icon(Icons.call, color: usedColor),
      label: const Text(
        'Order Call',
        style: TextStyle(fontSize: 16, color: usedColor),
      ),
    );
  }
}
