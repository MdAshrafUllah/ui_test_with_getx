import 'package:al_hadith_test/data/models/section_data_model.dart';
import 'package:al_hadith_test/presentation/controller/base_controller.dart';

class SectionController extends BaseController<SectionDataModel> {
  @override
  String get tableName => 'section';

  @override
  SectionDataModel fromJson(Map<String, dynamic> json) =>
      SectionDataModel.fromJson(json);
}
