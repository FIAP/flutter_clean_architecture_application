import 'package:flutter_clean_architecture_application/data/api/data_api.dart';
import 'package:flutter_clean_architecture_application/domain/business/api_workflow.dart';
import 'package:flutter_clean_architecture_application/domain/models/entry.dart';

class ApiController implements ApiWorkflow {
  final DataApi dataApi = DataApi();    

  @override
  Future<List<Entry>> getEntriesByCategory(String category) {
    return dataApi.getEntriesByCategory(category: category);
  }
}