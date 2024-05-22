import 'package:al_hadith_test/application/utility/app_colors.dart';
import 'package:al_hadith_test/data/models/book_data_model.dart';
import 'package:al_hadith_test/data/models/hadith_data_model.dart';
import 'package:al_hadith_test/data/utility/convert_digit.dart';
import 'package:al_hadith_test/presentation/ui/widgets/hexagon_shape.dart';
import 'package:al_hadith_test/presentation/utils/font%20style/arabic_font_style.dart';
import 'package:al_hadith_test/presentation/utils/font%20style/bangla_font_style.dart';
import 'package:flutter/material.dart';

class BuildHadithCard extends StatelessWidget {
  final BookDataModel book;
  final HadithDataModel hadith;
  const BuildHadithCard({super.key, required this.book, required this.hadith});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.whiteColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                HexagonShape(
                  title: book.abvrCode,
                  color: hadith.gradeColor,
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      book.title.toString(),
                      style: BanglaFontStyle.kalpurushRegular15.copyWith(
                        color: AppColors.greyColor,
                      ),
                    ),
                    Text(
                      "হাদিস: ${convertDigitsToBengali(hadith.hadithId.toString())}",
                      style: BanglaFontStyle.kalpurushBold17.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 70,
                    height: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColors.primaryColorAccent,
                    ),
                    child: Center(
                      child: Text(
                        hadith.grade.toString(),
                        style: BanglaFontStyle.kalpurushRegular12.copyWith(
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.more_vert,
                    color: AppColors.greyColor,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                hadith.ar.toString(),
                textAlign: TextAlign.right,
                style: ArabicFontStyle.kFGQ22.copyWith(
                  color: AppColors.blackColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "${hadith.narrator.toString()} থেকে বর্ণিত:",
                style: BanglaFontStyle.kalpurushRegular18.copyWith(
                  color: AppColors.primaryColorAccent,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                hadith.bn.toString(),
                style: BanglaFontStyle.kalpurushRegular18.copyWith(
                  color: AppColors.blackColor,
                ),
              ),
            ),
            hadith.note!.isNotEmpty
                ? const Divider(
                    color: AppColors.greyColor,
                    thickness: 0.1,
                  )
                : const SizedBox(),
            hadith.note!.isNotEmpty
                ? Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "ফুটনোট: \n${hadith.note.toString()}",
                      style: BanglaFontStyle.kalpurushRegular16.copyWith(
                        color: AppColors.greyColor,
                      ),
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
