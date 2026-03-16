import 'package:core_model/src/roaster/roaster_id.dart';
import 'package:core_model/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'roaster.freezed.dart';

@freezed
abstract class Roaster with _$Roaster {
  const factory Roaster({
    required RoasterId id,
    required UserId userId,
    required String name,
    required DateTime createdAt,
    required DateTime updatedAt,
    String? nameReading,
    String? location,
    String? websiteUrl,
    String? description,
  }) = _Roaster;
}
