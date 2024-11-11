import 'package:flutter_clean_architecture_application/domain/models/entry.dart';

abstract class ApiWorkflow {
  Future<List<Entry>> getEntriesByCategory({ required String category});
}