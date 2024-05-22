import 'package:al_hadith_test/data/models/chapter_data_model.dart';
import 'package:al_hadith_test/presentation/controller/base_controller.dart';

class ChapterController extends BaseController<ChapterDataModel> {
  @override
  String get tableName => 'chapter';

  @override
  ChapterDataModel fromJson(Map<String, dynamic> json) =>
      ChapterDataModel.fromJson(json);
}
