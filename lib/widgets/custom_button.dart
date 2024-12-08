import 'package:flutter/material.dart';
import 'package:google_map_app/resources/color_manager.dart';

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
      icon: Icon(Icons.call, color: ColorManager.gray),
      label: Text(
        'Order Call',
        style: TextStyle(fontSize: 16, color: ColorManager.black),
      ),
    );
  }
}
