import 'package:core_model/src/user/user_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required UserId id,
    required String firebaseUid,
    String? displayName,
    String? email,
    String? avatarUrl,
  }) = _User;
}
