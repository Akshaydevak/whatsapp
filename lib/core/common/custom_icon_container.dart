import 'package:flutter/material.dart';

class CustomRoundCornerIconWidget extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTapFunc;
  const CustomRoundCornerIconWidget({super.key,required this.icon,required this.onTapFunc});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTapFunc,
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(15)
        ),
        child: Center(
          child: Icon(Icons.message),

        ),
      ),
    );
  }
}
