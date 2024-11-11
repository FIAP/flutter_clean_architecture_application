import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture_application/domain/models/entry.dart';
import 'package:flutter_clean_architecture_application/utils/const/api.dart';

class DataApi {
  final Dio dio = Dio();
  List<Entry> entries = [];
  Future<List<Entry>> getEntriesByCategory({required String category}) async {
    final response = await dio.get(url + category);
    entries = List<Entry>.from(response.data.map((e) => Entry.fromMap(e)));
    return entries;
  }
}