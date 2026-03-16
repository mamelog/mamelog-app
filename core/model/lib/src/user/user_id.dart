import 'package:uuid/uuid.dart';

extension type const UserId(String value) implements String {
  factory UserId.generate() => UserId(const Uuid().v7());
}
