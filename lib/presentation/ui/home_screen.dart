// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:al_hadith_test/presentation/ui/widgets/home%20screen/hadith_card_widget.dart';
import 'package:al_hadith_test/presentation/ui/widgets/home%20screen/section_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

import 'package:al_hadith_test/application/utility/app_colors.dart';
import 'package:al_hadith_test/presentation/controller/book_controller.dart';
import 'package:al_hadith_test/presentation/controller/chapter_controller.dart';
import 'package:al_hadith_test/presentation/controller/hadith_controller.dart';
import 'package:al_hadith_test/presentation/controller/section_controller.dart';
import 'package:al_hadith_test/presentation/ui/widgets/app_bar_style.dart';
import 'package:al_hadith_test/presentation/ui/widgets/round_border.dart';

class HomeScreen extends StatelessWidget {
  BookController bookController = Get.put(BookController());
  HadithController hadithController = Get.put(HadithController());
  ChapterController chapterController = Get.put(ChapterController());
  SectionController sectionController = Get.put(SectionController());

  ScrollController scrollController = ScrollController();
  RxBool scrolling = false.obs;
  double? lastOffset = 0;

  HomeScreen({
    super.key,
    this.lastOffset,
  }) {
    scrollController.addListener(() {
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        scrolling.value = true;
      } else if (scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        scrolling.value = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (bookController.isLoading.value ||
          hadithController.isLoading.value ||
          chapterController.isLoading.value ||
          sectionController.isLoading.value) {
        return const Center(child: CircularProgressIndicator());
      } else if (bookController.items.isEmpty ||
          hadithController.items.isEmpty ||
          chapterController.items.isEmpty ||
          sectionController.items.isEmpty) {
        return const Center(child: Text('Not found'));
      } else {
        return Scaffold(
          backgroundColor: AppColors.primaryColor,
          appBar: appBarStyle(
            bookController.items.first.title.toString(),
            chapterController.items.first.title.toString(),
            context,
            scrolling.isTrue ? 0 : 80,
          ),
          body: RoundBorder(
            child: ListView.builder(
              controller: scrollController,
              itemCount: hadithController.items.length,
              itemBuilder: (context, index) {
                final hadith = hadithController.items[index];
                final section = sectionController.items.firstWhere(
                  (section) => section.sectionId == hadith.sectionId,
                );
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (index == 0 ||
                          hadithController.items[index - 1].sectionId !=
                              hadith.sectionId)
                        BuildSectionCard(section: section),
                      const SizedBox(
                        height: 15,
                      ),
                      BuildHadithCard(
                        book: bookController.items.first,
                        hadith: hadith,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      }
    });
  }
}
