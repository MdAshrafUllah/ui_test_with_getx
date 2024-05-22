import 'package:al_hadith_test/application/utility/app_colors.dart';
import 'package:al_hadith_test/presentation/ui/widgets/custom_back_button.dart';
import 'package:al_hadith_test/presentation/utils/assets_path.dart';
import 'package:al_hadith_test/presentation/utils/font%20style/bangla_font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar appBarStyle(
  String title,
  String subTitle,
  BuildContext context,
  double hight,
) {
  return AppBar(
    toolbarHeight: hight,
    leading: CustomBackButton(
      onPressed: () => Navigator.pop(context),
    ),
    title: Transform.translate(
      offset: const Offset(-15, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: BanglaFontStyle.kalpurushBold18,
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            subTitle,
            style: BanglaFontStyle.kalpurushRegular14,
          )
        ],
      ),
    ),
    foregroundColor: AppColors.whiteColor,
    backgroundColor: AppColors.primaryColor,
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 15),
        child: SvgPicture.asset(
          AssetsPath.settingIconSvg,
          height: 22,
          width: 22,
        ),
      ),
    ],
  );
}
