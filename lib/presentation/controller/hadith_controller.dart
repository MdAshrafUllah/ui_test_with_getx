import 'package:al_hadith_test/data/models/hadith_data_model.dart';
import 'package:al_hadith_test/presentation/controller/base_controller.dart';

class HadithController extends BaseController<HadithDataModel> {
  @override
  String get tableName => 'hadith';

  @override
  HadithDataModel fromJson(Map<String, dynamic> json) =>
      HadithDataModel.fromJson(json);
}
