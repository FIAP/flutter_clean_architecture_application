import 'package:flutter_clean_architecture_application/data/dao/database.dart';
import 'package:flutter_clean_architecture_application/data/dao/entry_dao.dart';
import 'package:flutter_clean_architecture_application/domain/business/dao_workflow.dart';
import 'package:flutter_clean_architecture_application/domain/models/entry.dart';

class DaoController implements DaoWorkflow {

  Future<EntryDao> createDatabase() async {
    final database = await $FloorAppDatabase.databaseBuilder('app_database.db').build();
    final EntryDao entryDao = database.entryDao;
    return entryDao;
  }

  @override
  Future<void> deleteEntry({required Entry entry}) async {
    final EntryDao entryDao = await createDatabase();
    entryDao.deleteEntry(entry);
  }

  @override
  Future<List<Entry>> getSavedEntries() async {
    final EntryDao entryDao = await createDatabase();
    return entryDao.getSavedEntries();
  }

  @override
  Future<void> saveEntry({required Entry entry}) async {
    final EntryDao entryDao = await createDatabase();
    entryDao.saveEntry(entry);
  }

}
