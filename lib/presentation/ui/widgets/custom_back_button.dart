import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData iconData;

  const CustomBackButton({
    super.key,
    required this.onPressed,
    this.iconData = Icons.arrow_back_ios_new_rounded,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Icon(iconData),
    );
  }
}
