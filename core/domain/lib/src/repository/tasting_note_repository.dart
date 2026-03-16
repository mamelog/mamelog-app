import 'package:core_common/result.dart';
import 'package:core_model/tasting_note.dart';

/// Repository interface for managing coffee tasting notes.
abstract class TastingNoteRepository {
  Stream<List<TastingNote>> watchAll();
  Future<Result<TastingNote>> getById(TastingNoteId id);
  Future<Result<TastingNoteId>> create(TastingNote note);
  Future<Result<void>> update(TastingNote note);
  Future<Result<void>> delete(TastingNoteId id);
}
