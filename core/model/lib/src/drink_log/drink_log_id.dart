import 'package:uuid/uuid.dart';

extension type const DrinkLogId(String value) implements String {
  factory DrinkLogId.generate() => DrinkLogId(const Uuid().v7());
}
