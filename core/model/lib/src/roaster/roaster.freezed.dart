// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'roaster.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Roaster {

 RoasterId get id; UserId get userId; String get name; DateTime get createdAt; DateTime get updatedAt; String? get nameReading; String? get location; String? get websiteUrl; String? get description;
/// Create a copy of Roaster
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoasterCopyWith<Roaster> get copyWith => _$RoasterCopyWithImpl<Roaster>(this as Roaster, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Roaster&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.nameReading, nameReading) || other.nameReading == nameReading)&&(identical(other.location, location) || other.location == location)&&(identical(other.websiteUrl, websiteUrl) || other.websiteUrl == websiteUrl)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,name,createdAt,updatedAt,nameReading,location,websiteUrl,description);

@override
String toString() {
  return 'Roaster(id: $id, userId: $userId, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, nameReading: $nameReading, location: $location, websiteUrl: $websiteUrl, description: $description)';
}


}

/// @nodoc
abstract mixin class $RoasterCopyWith<$Res>  {
  factory $RoasterCopyWith(Roaster value, $Res Function(Roaster) _then) = _$RoasterCopyWithImpl;
@useResult
$Res call({
 RoasterId id, UserId userId, String name, DateTime createdAt, DateTime updatedAt, String? nameReading, String? location, String? websiteUrl, String? description
});




}
/// @nodoc
class _$RoasterCopyWithImpl<$Res>
    implements $RoasterCopyWith<$Res> {
  _$RoasterCopyWithImpl(this._self, this._then);

  final Roaster _self;
  final $Res Function(Roaster) _then;

/// Create a copy of Roaster
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? name = null,Object? createdAt = null,Object? updatedAt = null,Object? nameReading = freezed,Object? location = freezed,Object? websiteUrl = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as RoasterId,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as UserId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,nameReading: freezed == nameReading ? _self.nameReading : nameReading // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,websiteUrl: freezed == websiteUrl ? _self.websiteUrl : websiteUrl // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}



/// @nodoc


class _Roaster implements Roaster {
  const _Roaster({required this.id, required this.userId, required this.name, required this.createdAt, required this.updatedAt, this.nameReading, this.location, this.websiteUrl, this.description});
  

@override final  RoasterId id;
@override final  UserId userId;
@override final  String name;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String? nameReading;
@override final  String? location;
@override final  String? websiteUrl;
@override final  String? description;

/// Create a copy of Roaster
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoasterCopyWith<_Roaster> get copyWith => __$RoasterCopyWithImpl<_Roaster>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Roaster&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.nameReading, nameReading) || other.nameReading == nameReading)&&(identical(other.location, location) || other.location == location)&&(identical(other.websiteUrl, websiteUrl) || other.websiteUrl == websiteUrl)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,name,createdAt,updatedAt,nameReading,location,websiteUrl,description);

@override
String toString() {
  return 'Roaster(id: $id, userId: $userId, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, nameReading: $nameReading, location: $location, websiteUrl: $websiteUrl, description: $description)';
}


}

/// @nodoc
abstract mixin class _$RoasterCopyWith<$Res> implements $RoasterCopyWith<$Res> {
  factory _$RoasterCopyWith(_Roaster value, $Res Function(_Roaster) _then) = __$RoasterCopyWithImpl;
@override @useResult
$Res call({
 RoasterId id, UserId userId, String name, DateTime createdAt, DateTime updatedAt, String? nameReading, String? location, String? websiteUrl, String? description
});




}
/// @nodoc
class __$RoasterCopyWithImpl<$Res>
    implements _$RoasterCopyWith<$Res> {
  __$RoasterCopyWithImpl(this._self, this._then);

  final _Roaster _self;
  final $Res Function(_Roaster) _then;

/// Create a copy of Roaster
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? name = null,Object? createdAt = null,Object? updatedAt = null,Object? nameReading = freezed,Object? location = freezed,Object? websiteUrl = freezed,Object? description = freezed,}) {
  return _then(_Roaster(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as RoasterId,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as UserId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,nameReading: freezed == nameReading ? _self.nameReading : nameReading // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,websiteUrl: freezed == websiteUrl ? _self.websiteUrl : websiteUrl // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
