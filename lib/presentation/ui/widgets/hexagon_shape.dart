import 'package:al_hadith_test/presentation/utils/font%20style/english_font_style.dart';
import 'package:flutter/material.dart';
import 'package:gui_shape/gui_shape.dart';

import 'package:al_hadith_test/application/utility/app_colors.dart';

class HexagonShape extends StatelessWidget {
  final String? title;
  final String? color;
  const HexagonShape({
    super.key,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final colorValue = int.parse(color!.replaceFirst("#", "0xFF"));

    return SizedBox(
      height: 45,
      width: 45,
      child: GuiClipShape(
        shape: GuiShapePolygon(
          sides: 6,
          cornerRadius: 2,
          startAngle: GeoAngle(degree: 30),
        ),
        child: Container(
          color: Color(colorValue),
          child: Center(
            child: Text(title.toString(),
                style: EnglishFontStyle.defaultBold14.copyWith(
                  color: AppColors.whiteColor,
                )),
          ),
        ),
      ),
    );
  }
}
