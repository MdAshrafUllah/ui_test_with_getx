// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:al_hadith_test/application/utility/app_colors.dart';
import 'package:al_hadith_test/data/models/section_data_model.dart';
import 'package:al_hadith_test/presentation/utils/font%20style/bangla_font_style.dart';

class BuildSectionCard extends StatelessWidget {
  final SectionDataModel section;
  const BuildSectionCard({
    super.key,
    required this.section,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.whiteColor,
      ),
      child: SizedBox(
        width: double.maxFinite,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "${section.number} ",
                      style: BanglaFontStyle.kalpurushBold17.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    TextSpan(
                      text: section.title,
                      style: BanglaFontStyle.kalpurushBold18.copyWith(
                        color: AppColors.greyColor,
                      ),
                    )
                  ],
                ),
              ),
              section.preface != ""
                  ? const Divider(
                      color: AppColors.greyColor,
                      thickness: 0.1,
                    )
                  : const SizedBox(),
              section.preface != ""
                  ? Text(
                      section.preface.toString(),
                      style: BanglaFontStyle.kalpurushRegular17.copyWith(
                        color: AppColors.greyColor,
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
