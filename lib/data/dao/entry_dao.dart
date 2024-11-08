import 'package:floor/floor.dart';
import 'package:flutter_clean_architecture_application/domain/models/entry.dart';

@dao
abstract class EntryDao{
  
  @Query('SELECT * FROM ENTRY')
  Future<List<Entry>> getSavedEntries();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> saveEntry(Entry entry);

  @delete
  Future<void> deleteEntry(Entry entry);
}