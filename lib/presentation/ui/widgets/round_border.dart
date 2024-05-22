import 'package:al_hadith_test/application/utility/app_colors.dart';
import 'package:flutter/material.dart';

class RoundBorder extends StatelessWidget {
  const RoundBorder({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: AppColors.backgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: child,
      ),
    );
  }
}
