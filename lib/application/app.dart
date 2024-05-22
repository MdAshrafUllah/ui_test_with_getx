import 'package:al_hadith_test/application/utility/app_colors.dart';
import 'package:al_hadith_test/presentation/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ALHadithApp extends StatelessWidget {
  const ALHadithApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AL Hadith',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
