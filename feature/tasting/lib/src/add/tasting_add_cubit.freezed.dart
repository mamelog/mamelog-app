// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasting_add_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TastingAddState {

 BeanId get beanId; DateTime get drunkAt; int? get rating; String? get memo; int get acidity; int get aroma; int get sweetness; int get bitterness; int get body; bool get isSaving; String? get error; bool get isSuccess;
/// Create a copy of TastingAddState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TastingAddStateCopyWith<TastingAddState> get copyWith => _$TastingAddStateCopyWithImpl<TastingAddState>(this as TastingAddState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TastingAddState&&(identical(other.beanId, beanId) || other.beanId == beanId)&&(identical(other.drunkAt, drunkAt) || other.drunkAt == drunkAt)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.memo, memo) || other.memo == memo)&&(identical(other.acidity, acidity) || other.acidity == acidity)&&(identical(other.aroma, aroma) || other.aroma == aroma)&&(identical(other.sweetness, sweetness) || other.sweetness == sweetness)&&(identical(other.bitterness, bitterness) || other.bitterness == bitterness)&&(identical(other.body, body) || other.body == body)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving)&&(identical(other.error, error) || other.error == error)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,beanId,drunkAt,rating,memo,acidity,aroma,sweetness,bitterness,body,isSaving,error,isSuccess);

@override
String toString() {
  return 'TastingAddState(beanId: $beanId, drunkAt: $drunkAt, rating: $rating, memo: $memo, acidity: $acidity, aroma: $aroma, sweetness: $sweetness, bitterness: $bitterness, body: $body, isSaving: $isSaving, error: $error, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class $TastingAddStateCopyWith<$Res>  {
  factory $TastingAddStateCopyWith(TastingAddState value, $Res Function(TastingAddState) _then) = _$TastingAddStateCopyWithImpl;
@useResult
$Res call({
 BeanId beanId, DateTime drunkAt, int? rating, String? memo, int acidity, int aroma, int sweetness, int bitterness, int body, bool isSaving, String? error, bool isSuccess
});




}
/// @nodoc
class _$TastingAddStateCopyWithImpl<$Res>
    implements $TastingAddStateCopyWith<$Res> {
  _$TastingAddStateCopyWithImpl(this._self, this._then);

  final TastingAddState _self;
  final $Res Function(TastingAddState) _then;

/// Create a copy of TastingAddState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? beanId = null,Object? drunkAt = null,Object? rating = freezed,Object? memo = freezed,Object? acidity = null,Object? aroma = null,Object? sweetness = null,Object? bitterness = null,Object? body = null,Object? isSaving = null,Object? error = freezed,Object? isSuccess = null,}) {
  return _then(_self.copyWith(
beanId: null == beanId ? _self.beanId : beanId // ignore: cast_nullable_to_non_nullable
as BeanId,drunkAt: null == drunkAt ? _self.drunkAt : drunkAt // ignore: cast_nullable_to_non_nullable
as DateTime,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int?,memo: freezed == memo ? _self.memo : memo // ignore: cast_nullable_to_non_nullable
as String?,acidity: null == acidity ? _self.acidity : acidity // ignore: cast_nullable_to_non_nullable
as int,aroma: null == aroma ? _self.aroma : aroma // ignore: cast_nullable_to_non_nullable
as int,sweetness: null == sweetness ? _self.sweetness : sweetness // ignore: cast_nullable_to_non_nullable
as int,bitterness: null == bitterness ? _self.bitterness : bitterness // ignore: cast_nullable_to_non_nullable
as int,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as int,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TastingAddState].
extension TastingAddStatePatterns on TastingAddState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TastingAddState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TastingAddState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TastingAddState value)  $default,){
final _that = this;
switch (_that) {
case _TastingAddState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TastingAddState value)?  $default,){
final _that = this;
switch (_that) {
case _TastingAddState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BeanId beanId,  DateTime drunkAt,  int? rating,  String? memo,  int acidity,  int aroma,  int sweetness,  int bitterness,  int body,  bool isSaving,  String? error,  bool isSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TastingAddState() when $default != null:
return $default(_that.beanId,_that.drunkAt,_that.rating,_that.memo,_that.acidity,_that.aroma,_that.sweetness,_that.bitterness,_that.body,_that.isSaving,_that.error,_that.isSuccess);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BeanId beanId,  DateTime drunkAt,  int? rating,  String? memo,  int acidity,  int aroma,  int sweetness,  int bitterness,  int body,  bool isSaving,  String? error,  bool isSuccess)  $default,) {final _that = this;
switch (_that) {
case _TastingAddState():
return $default(_that.beanId,_that.drunkAt,_that.rating,_that.memo,_that.acidity,_that.aroma,_that.sweetness,_that.bitterness,_that.body,_that.isSaving,_that.error,_that.isSuccess);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BeanId beanId,  DateTime drunkAt,  int? rating,  String? memo,  int acidity,  int aroma,  int sweetness,  int bitterness,  int body,  bool isSaving,  String? error,  bool isSuccess)?  $default,) {final _that = this;
switch (_that) {
case _TastingAddState() when $default != null:
return $default(_that.beanId,_that.drunkAt,_that.rating,_that.memo,_that.acidity,_that.aroma,_that.sweetness,_that.bitterness,_that.body,_that.isSaving,_that.error,_that.isSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _TastingAddState implements TastingAddState {
  const _TastingAddState({required this.beanId, required this.drunkAt, this.rating, this.memo, this.acidity = 50, this.aroma = 50, this.sweetness = 50, this.bitterness = 50, this.body = 50, this.isSaving = false, this.error, this.isSuccess = false});
  

@override final  BeanId beanId;
@override final  DateTime drunkAt;
@override final  int? rating;
@override final  String? memo;
@override@JsonKey() final  int acidity;
@override@JsonKey() final  int aroma;
@override@JsonKey() final  int sweetness;
@override@JsonKey() final  int bitterness;
@override@JsonKey() final  int body;
@override@JsonKey() final  bool isSaving;
@override final  String? error;
@override@JsonKey() final  bool isSuccess;

/// Create a copy of TastingAddState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TastingAddStateCopyWith<_TastingAddState> get copyWith => __$TastingAddStateCopyWithImpl<_TastingAddState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TastingAddState&&(identical(other.beanId, beanId) || other.beanId == beanId)&&(identical(other.drunkAt, drunkAt) || other.drunkAt == drunkAt)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.memo, memo) || other.memo == memo)&&(identical(other.acidity, acidity) || other.acidity == acidity)&&(identical(other.aroma, aroma) || other.aroma == aroma)&&(identical(other.sweetness, sweetness) || other.sweetness == sweetness)&&(identical(other.bitterness, bitterness) || other.bitterness == bitterness)&&(identical(other.body, body) || other.body == body)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving)&&(identical(other.error, error) || other.error == error)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,beanId,drunkAt,rating,memo,acidity,aroma,sweetness,bitterness,body,isSaving,error,isSuccess);

@override
String toString() {
  return 'TastingAddState(beanId: $beanId, drunkAt: $drunkAt, rating: $rating, memo: $memo, acidity: $acidity, aroma: $aroma, sweetness: $sweetness, bitterness: $bitterness, body: $body, isSaving: $isSaving, error: $error, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class _$TastingAddStateCopyWith<$Res> implements $TastingAddStateCopyWith<$Res> {
  factory _$TastingAddStateCopyWith(_TastingAddState value, $Res Function(_TastingAddState) _then) = __$TastingAddStateCopyWithImpl;
@override @useResult
$Res call({
 BeanId beanId, DateTime drunkAt, int? rating, String? memo, int acidity, int aroma, int sweetness, int bitterness, int body, bool isSaving, String? error, bool isSuccess
});




}
/// @nodoc
class __$TastingAddStateCopyWithImpl<$Res>
    implements _$TastingAddStateCopyWith<$Res> {
  __$TastingAddStateCopyWithImpl(this._self, this._then);

  final _TastingAddState _self;
  final $Res Function(_TastingAddState) _then;

/// Create a copy of TastingAddState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? beanId = null,Object? drunkAt = null,Object? rating = freezed,Object? memo = freezed,Object? acidity = null,Object? aroma = null,Object? sweetness = null,Object? bitterness = null,Object? body = null,Object? isSaving = null,Object? error = freezed,Object? isSuccess = null,}) {
  return _then(_TastingAddState(
beanId: null == beanId ? _self.beanId : beanId // ignore: cast_nullable_to_non_nullable
as BeanId,drunkAt: null == drunkAt ? _self.drunkAt : drunkAt // ignore: cast_nullable_to_non_nullable
as DateTime,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int?,memo: freezed == memo ? _self.memo : memo // ignore: cast_nullable_to_non_nullable
as String?,acidity: null == acidity ? _self.acidity : acidity // ignore: cast_nullable_to_non_nullable
as int,aroma: null == aroma ? _self.aroma : aroma // ignore: cast_nullable_to_non_nullable
as int,sweetness: null == sweetness ? _self.sweetness : sweetness // ignore: cast_nullable_to_non_nullable
as int,bitterness: null == bitterness ? _self.bitterness : bitterness // ignore: cast_nullable_to_non_nullable
as int,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as int,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
