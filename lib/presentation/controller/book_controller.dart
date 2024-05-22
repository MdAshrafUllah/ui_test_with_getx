import 'package:al_hadith_test/data/models/book_data_model.dart';
import 'package:al_hadith_test/presentation/controller/base_controller.dart';

class BookController extends BaseController<BookDataModel> {
  @override
  String get tableName => 'books';

  @override
  BookDataModel fromJson(Map<String, dynamic> json) =>
      BookDataModel.fromJson(json);
}
