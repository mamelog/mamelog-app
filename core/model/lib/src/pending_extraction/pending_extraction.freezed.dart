// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pending_extraction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PendingExtraction {

 String get id; String get imagePath; DateTime get createdAt; PendingExtractionStatus get status; int get retryCount; String? get errorMessage;
/// Create a copy of PendingExtraction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PendingExtractionCopyWith<PendingExtraction> get copyWith => _$PendingExtractionCopyWithImpl<PendingExtraction>(this as PendingExtraction, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PendingExtraction&&(identical(other.id, id) || other.id == id)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.retryCount, retryCount) || other.retryCount == retryCount)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,id,imagePath,createdAt,status,retryCount,errorMessage);

@override
String toString() {
  return 'PendingExtraction(id: $id, imagePath: $imagePath, createdAt: $createdAt, status: $status, retryCount: $retryCount, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $PendingExtractionCopyWith<$Res>  {
  factory $PendingExtractionCopyWith(PendingExtraction value, $Res Function(PendingExtraction) _then) = _$PendingExtractionCopyWithImpl;
@useResult
$Res call({
 String id, String imagePath, DateTime createdAt, PendingExtractionStatus status, int retryCount, String? errorMessage
});




}
/// @nodoc
class _$PendingExtractionCopyWithImpl<$Res>
    implements $PendingExtractionCopyWith<$Res> {
  _$PendingExtractionCopyWithImpl(this._self, this._then);

  final PendingExtraction _self;
  final $Res Function(PendingExtraction) _then;

/// Create a copy of PendingExtraction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? imagePath = null,Object? createdAt = null,Object? status = null,Object? retryCount = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PendingExtractionStatus,retryCount: null == retryCount ? _self.retryCount : retryCount // ignore: cast_nullable_to_non_nullable
as int,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}



/// @nodoc


class _PendingExtraction implements PendingExtraction {
  const _PendingExtraction({required this.id, required this.imagePath, required this.createdAt, this.status = PendingExtractionStatus.pending, this.retryCount = 0, this.errorMessage});
  

@override final  String id;
@override final  String imagePath;
@override final  DateTime createdAt;
@override@JsonKey() final  PendingExtractionStatus status;
@override@JsonKey() final  int retryCount;
@override final  String? errorMessage;

/// Create a copy of PendingExtraction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PendingExtractionCopyWith<_PendingExtraction> get copyWith => __$PendingExtractionCopyWithImpl<_PendingExtraction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PendingExtraction&&(identical(other.id, id) || other.id == id)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.retryCount, retryCount) || other.retryCount == retryCount)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,id,imagePath,createdAt,status,retryCount,errorMessage);

@override
String toString() {
  return 'PendingExtraction(id: $id, imagePath: $imagePath, createdAt: $createdAt, status: $status, retryCount: $retryCount, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$PendingExtractionCopyWith<$Res> implements $PendingExtractionCopyWith<$Res> {
  factory _$PendingExtractionCopyWith(_PendingExtraction value, $Res Function(_PendingExtraction) _then) = __$PendingExtractionCopyWithImpl;
@override @useResult
$Res call({
 String id, String imagePath, DateTime createdAt, PendingExtractionStatus status, int retryCount, String? errorMessage
});




}
/// @nodoc
class __$PendingExtractionCopyWithImpl<$Res>
    implements _$PendingExtractionCopyWith<$Res> {
  __$PendingExtractionCopyWithImpl(this._self, this._then);

  final _PendingExtraction _self;
  final $Res Function(_PendingExtraction) _then;

/// Create a copy of PendingExtraction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? imagePath = null,Object? createdAt = null,Object? status = null,Object? retryCount = null,Object? errorMessage = freezed,}) {
  return _then(_PendingExtraction(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PendingExtractionStatus,retryCount: null == retryCount ? _self.retryCount : retryCount // ignore: cast_nullable_to_non_nullable
as int,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
