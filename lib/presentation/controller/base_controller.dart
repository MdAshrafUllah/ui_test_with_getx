import 'dart:developer';

import 'package:al_hadith_test/data/services/db_helper.dart';
import 'package:get/get.dart';

abstract class BaseController<T> extends GetxController {
  RxList<T> items = <T>[].obs;
  RxBool isLoading = true.obs;

  String get tableName;

  T fromJson(Map<String, dynamic> json);

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    try {
      isLoading(true);
      final result = await DatabaseHelper.queryAllRows(tableName);
      items.value = result.map((data) => fromJson(data)).toList();
    } catch (e) {
      log("Error fetching data: $e");
    } finally {
      isLoading(false);
    }
  }
}
