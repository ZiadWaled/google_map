import 'package:flutter/material.dart';
import 'package:work/const.dart';

class ContainerCustomWidget extends StatelessWidget {
  const ContainerCustomWidget(
      {super.key, required this.icon, required this.text, required this.color});
  final IconData icon;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 40,
            color: usedColor, 
          ),
          const SizedBox(height: 8),
          Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: usedColor, 
            ),
          ),
        ],
      ),
    );
  }
}
