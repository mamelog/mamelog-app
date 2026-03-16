import 'package:uuid/uuid.dart';

extension type const BeanId(String value) implements String {
  factory BeanId.generate() => BeanId(const Uuid().v7());
}
