import 'package:uuid/uuid.dart';

extension type const TastingNoteId(String value) implements String {
  factory TastingNoteId.generate() => TastingNoteId(const Uuid().v7());
}
