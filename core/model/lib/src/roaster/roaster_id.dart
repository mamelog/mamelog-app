import 'package:uuid/uuid.dart';

extension type const RoasterId(String value) implements String {
  factory RoasterId.generate() => RoasterId(const Uuid().v7());
}
