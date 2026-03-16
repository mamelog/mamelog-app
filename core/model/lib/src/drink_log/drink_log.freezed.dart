// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drink_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DrinkLog {

 DrinkLogId get id; UserId get userId; BeanId get beanId; DateTime get drunkAt; DateTime get createdAt; DateTime get updatedAt; BrewRecipeId? get brewRecipeId; int? get rating;// 1-5
 String? get memo; int? get acidity;// 0-100
 int? get aroma;// 0-100
 int? get sweetness;// 0-100
 int? get bitterness;// 0-100
 int? get body;
/// Create a copy of DrinkLog
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DrinkLogCopyWith<DrinkLog> get copyWith => _$DrinkLogCopyWithImpl<DrinkLog>(this as DrinkLog, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DrinkLog&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.beanId, beanId) || other.beanId == beanId)&&(identical(other.drunkAt, drunkAt) || other.drunkAt == drunkAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.brewRecipeId, brewRecipeId) || other.brewRecipeId == brewRecipeId)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.memo, memo) || other.memo == memo)&&(identical(other.acidity, acidity) || other.acidity == acidity)&&(identical(other.aroma, aroma) || other.aroma == aroma)&&(identical(other.sweetness, sweetness) || other.sweetness == sweetness)&&(identical(other.bitterness, bitterness) || other.bitterness == bitterness)&&(identical(other.body, body) || other.body == body));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,beanId,drunkAt,createdAt,updatedAt,brewRecipeId,rating,memo,acidity,aroma,sweetness,bitterness,body);

@override
String toString() {
  return 'DrinkLog(id: $id, userId: $userId, beanId: $beanId, drunkAt: $drunkAt, createdAt: $createdAt, updatedAt: $updatedAt, brewRecipeId: $brewRecipeId, rating: $rating, memo: $memo, acidity: $acidity, aroma: $aroma, sweetness: $sweetness, bitterness: $bitterness, body: $body)';
}


}

/// @nodoc
abstract mixin class $DrinkLogCopyWith<$Res>  {
  factory $DrinkLogCopyWith(DrinkLog value, $Res Function(DrinkLog) _then) = _$DrinkLogCopyWithImpl;
@useResult
$Res call({
 DrinkLogId id, UserId userId, BeanId beanId, DateTime drunkAt, DateTime createdAt, DateTime updatedAt, BrewRecipeId? brewRecipeId, int? rating, String? memo, int? acidity, int? aroma, int? sweetness, int? bitterness, int? body
});




}
/// @nodoc
class _$DrinkLogCopyWithImpl<$Res>
    implements $DrinkLogCopyWith<$Res> {
  _$DrinkLogCopyWithImpl(this._self, this._then);

  final DrinkLog _self;
  final $Res Function(DrinkLog) _then;

/// Create a copy of DrinkLog
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? beanId = null,Object? drunkAt = null,Object? createdAt = null,Object? updatedAt = null,Object? brewRecipeId = freezed,Object? rating = freezed,Object? memo = freezed,Object? acidity = freezed,Object? aroma = freezed,Object? sweetness = freezed,Object? bitterness = freezed,Object? body = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as DrinkLogId,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as UserId,beanId: null == beanId ? _self.beanId : beanId // ignore: cast_nullable_to_non_nullable
as BeanId,drunkAt: null == drunkAt ? _self.drunkAt : drunkAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,brewRecipeId: freezed == brewRecipeId ? _self.brewRecipeId : brewRecipeId // ignore: cast_nullable_to_non_nullable
as BrewRecipeId?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int?,memo: freezed == memo ? _self.memo : memo // ignore: cast_nullable_to_non_nullable
as String?,acidity: freezed == acidity ? _self.acidity : acidity // ignore: cast_nullable_to_non_nullable
as int?,aroma: freezed == aroma ? _self.aroma : aroma // ignore: cast_nullable_to_non_nullable
as int?,sweetness: freezed == sweetness ? _self.sweetness : sweetness // ignore: cast_nullable_to_non_nullable
as int?,bitterness: freezed == bitterness ? _self.bitterness : bitterness // ignore: cast_nullable_to_non_nullable
as int?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}



/// @nodoc


class _DrinkLog implements DrinkLog {
  const _DrinkLog({required this.id, required this.userId, required this.beanId, required this.drunkAt, required this.createdAt, required this.updatedAt, this.brewRecipeId, this.rating, this.memo, this.acidity, this.aroma, this.sweetness, this.bitterness, this.body});
  

@override final  DrinkLogId id;
@override final  UserId userId;
@override final  BeanId beanId;
@override final  DateTime drunkAt;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  BrewRecipeId? brewRecipeId;
@override final  int? rating;
// 1-5
@override final  String? memo;
@override final  int? acidity;
// 0-100
@override final  int? aroma;
// 0-100
@override final  int? sweetness;
// 0-100
@override final  int? bitterness;
// 0-100
@override final  int? body;

/// Create a copy of DrinkLog
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DrinkLogCopyWith<_DrinkLog> get copyWith => __$DrinkLogCopyWithImpl<_DrinkLog>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DrinkLog&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.beanId, beanId) || other.beanId == beanId)&&(identical(other.drunkAt, drunkAt) || other.drunkAt == drunkAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.brewRecipeId, brewRecipeId) || other.brewRecipeId == brewRecipeId)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.memo, memo) || other.memo == memo)&&(identical(other.acidity, acidity) || other.acidity == acidity)&&(identical(other.aroma, aroma) || other.aroma == aroma)&&(identical(other.sweetness, sweetness) || other.sweetness == sweetness)&&(identical(other.bitterness, bitterness) || other.bitterness == bitterness)&&(identical(other.body, body) || other.body == body));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,beanId,drunkAt,createdAt,updatedAt,brewRecipeId,rating,memo,acidity,aroma,sweetness,bitterness,body);

@override
String toString() {
  return 'DrinkLog(id: $id, userId: $userId, beanId: $beanId, drunkAt: $drunkAt, createdAt: $createdAt, updatedAt: $updatedAt, brewRecipeId: $brewRecipeId, rating: $rating, memo: $memo, acidity: $acidity, aroma: $aroma, sweetness: $sweetness, bitterness: $bitterness, body: $body)';
}


}

/// @nodoc
abstract mixin class _$DrinkLogCopyWith<$Res> implements $DrinkLogCopyWith<$Res> {
  factory _$DrinkLogCopyWith(_DrinkLog value, $Res Function(_DrinkLog) _then) = __$DrinkLogCopyWithImpl;
@override @useResult
$Res call({
 DrinkLogId id, UserId userId, BeanId beanId, DateTime drunkAt, DateTime createdAt, DateTime updatedAt, BrewRecipeId? brewRecipeId, int? rating, String? memo, int? acidity, int? aroma, int? sweetness, int? bitterness, int? body
});




}
/// @nodoc
class __$DrinkLogCopyWithImpl<$Res>
    implements _$DrinkLogCopyWith<$Res> {
  __$DrinkLogCopyWithImpl(this._self, this._then);

  final _DrinkLog _self;
  final $Res Function(_DrinkLog) _then;

/// Create a copy of DrinkLog
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? beanId = null,Object? drunkAt = null,Object? createdAt = null,Object? updatedAt = null,Object? brewRecipeId = freezed,Object? rating = freezed,Object? memo = freezed,Object? acidity = freezed,Object? aroma = freezed,Object? sweetness = freezed,Object? bitterness = freezed,Object? body = freezed,}) {
  return _then(_DrinkLog(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as DrinkLogId,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as UserId,beanId: null == beanId ? _self.beanId : beanId // ignore: cast_nullable_to_non_nullable
as BeanId,drunkAt: null == drunkAt ? _self.drunkAt : drunkAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,brewRecipeId: freezed == brewRecipeId ? _self.brewRecipeId : brewRecipeId // ignore: cast_nullable_to_non_nullable
as BrewRecipeId?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int?,memo: freezed == memo ? _self.memo : memo // ignore: cast_nullable_to_non_nullable
as String?,acidity: freezed == acidity ? _self.acidity : acidity // ignore: cast_nullable_to_non_nullable
as int?,aroma: freezed == aroma ? _self.aroma : aroma // ignore: cast_nullable_to_non_nullable
as int?,sweetness: freezed == sweetness ? _self.sweetness : sweetness // ignore: cast_nullable_to_non_nullable
as int?,bitterness: freezed == bitterness ? _self.bitterness : bitterness // ignore: cast_nullable_to_non_nullable
as int?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
