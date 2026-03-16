import 'package:core_model/tasting_note.dart';

/// DAO interface for TastingNote table.
abstract class TastingNoteDao {
  Stream<List<TastingNote>> watchAllTastingNotes();
  Future<TastingNote?> getTastingNoteById(TastingNoteId id);
  Future<void> insertTastingNote(TastingNote note);
  Future<void> updateTastingNote(TastingNote note);
  Future<void> deleteTastingNoteById(TastingNoteId id);
}
