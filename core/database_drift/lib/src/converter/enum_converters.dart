import 'package:core_model/bean.dart';
import 'package:drift/drift.dart';
import 'package:logging/logging.dart';

final _log = Logger('EnumConverters');

class RoastLevelConverter extends TypeConverter<RoastLevel, String> {
  const RoastLevelConverter();

  static const Map<RoastLevel, String> _toDb = {
    RoastLevel.light: 'light',
    RoastLevel.mediumLight: 'medium_light',
    RoastLevel.medium: 'medium',
    RoastLevel.mediumDark: 'medium_dark',
    RoastLevel.dark: 'dark',
  };

  static final Map<String, RoastLevel> _fromDb = {
    for (final entry in _toDb.entries) entry.value: entry.key,
  };

  @override
  RoastLevel fromSql(String fromDb) {
    final result = _fromDb[fromDb];
    if (result == null) {
      _log.warning('Unknown RoastLevel "$fromDb", defaulting to medium');
    }
    return result ?? RoastLevel.medium;
  }

  @override
  String toSql(RoastLevel value) => _toDb[value]!;
}

class BeanTypeConverter extends TypeConverter<BeanType, String> {
  const BeanTypeConverter();

  static const Map<BeanType, String> _toDb = {
    BeanType.singleOrigin: 'single_origin',
    BeanType.blend: 'blend',
  };

  static final Map<String, BeanType> _fromDb = {
    for (final entry in _toDb.entries) entry.value: entry.key,
  };

  @override
  BeanType fromSql(String fromDb) {
    final result = _fromDb[fromDb];
    if (result == null) {
      _log.warning(
        'Unknown BeanType "$fromDb", defaulting to singleOrigin',
      );
    }
    return result ?? BeanType.singleOrigin;
  }

  @override
  String toSql(BeanType value) => _toDb[value]!;
}
