// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasting_edit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TastingEditState {

 DrinkLogId get drinkLogId; DrinkLog? get originalLog; int? get rating; String? get memo; int get acidity; int get aroma; int get sweetness; int get bitterness; int get body; bool get isLoading; bool get isSaving; String? get error; bool get isSuccess;
/// Create a copy of TastingEditState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TastingEditStateCopyWith<TastingEditState> get copyWith => _$TastingEditStateCopyWithImpl<TastingEditState>(this as TastingEditState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TastingEditState&&(identical(other.drinkLogId, drinkLogId) || other.drinkLogId == drinkLogId)&&(identical(other.originalLog, originalLog) || other.originalLog == originalLog)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.memo, memo) || other.memo == memo)&&(identical(other.acidity, acidity) || other.acidity == acidity)&&(identical(other.aroma, aroma) || other.aroma == aroma)&&(identical(other.sweetness, sweetness) || other.sweetness == sweetness)&&(identical(other.bitterness, bitterness) || other.bitterness == bitterness)&&(identical(other.body, body) || other.body == body)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving)&&(identical(other.error, error) || other.error == error)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,drinkLogId,originalLog,rating,memo,acidity,aroma,sweetness,bitterness,body,isLoading,isSaving,error,isSuccess);

@override
String toString() {
  return 'TastingEditState(drinkLogId: $drinkLogId, originalLog: $originalLog, rating: $rating, memo: $memo, acidity: $acidity, aroma: $aroma, sweetness: $sweetness, bitterness: $bitterness, body: $body, isLoading: $isLoading, isSaving: $isSaving, error: $error, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class $TastingEditStateCopyWith<$Res>  {
  factory $TastingEditStateCopyWith(TastingEditState value, $Res Function(TastingEditState) _then) = _$TastingEditStateCopyWithImpl;
@useResult
$Res call({
 DrinkLogId drinkLogId, DrinkLog? originalLog, int? rating, String? memo, int acidity, int aroma, int sweetness, int bitterness, int body, bool isLoading, bool isSaving, String? error, bool isSuccess
});


$DrinkLogCopyWith<$Res>? get originalLog;

}
/// @nodoc
class _$TastingEditStateCopyWithImpl<$Res>
    implements $TastingEditStateCopyWith<$Res> {
  _$TastingEditStateCopyWithImpl(this._self, this._then);

  final TastingEditState _self;
  final $Res Function(TastingEditState) _then;

/// Create a copy of TastingEditState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? drinkLogId = null,Object? originalLog = freezed,Object? rating = freezed,Object? memo = freezed,Object? acidity = null,Object? aroma = null,Object? sweetness = null,Object? bitterness = null,Object? body = null,Object? isLoading = null,Object? isSaving = null,Object? error = freezed,Object? isSuccess = null,}) {
  return _then(_self.copyWith(
drinkLogId: null == drinkLogId ? _self.drinkLogId : drinkLogId // ignore: cast_nullable_to_non_nullable
as DrinkLogId,originalLog: freezed == originalLog ? _self.originalLog : originalLog // ignore: cast_nullable_to_non_nullable
as DrinkLog?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int?,memo: freezed == memo ? _self.memo : memo // ignore: cast_nullable_to_non_nullable
as String?,acidity: null == acidity ? _self.acidity : acidity // ignore: cast_nullable_to_non_nullable
as int,aroma: null == aroma ? _self.aroma : aroma // ignore: cast_nullable_to_non_nullable
as int,sweetness: null == sweetness ? _self.sweetness : sweetness // ignore: cast_nullable_to_non_nullable
as int,bitterness: null == bitterness ? _self.bitterness : bitterness // ignore: cast_nullable_to_non_nullable
as int,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of TastingEditState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DrinkLogCopyWith<$Res>? get originalLog {
    if (_self.originalLog == null) {
    return null;
  }

  return $DrinkLogCopyWith<$Res>(_self.originalLog!, (value) {
    return _then(_self.copyWith(originalLog: value));
  });
}
}


/// Adds pattern-matching-related methods to [TastingEditState].
extension TastingEditStatePatterns on TastingEditState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TastingEditState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TastingEditState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TastingEditState value)  $default,){
final _that = this;
switch (_that) {
case _TastingEditState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TastingEditState value)?  $default,){
final _that = this;
switch (_that) {
case _TastingEditState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DrinkLogId drinkLogId,  DrinkLog? originalLog,  int? rating,  String? memo,  int acidity,  int aroma,  int sweetness,  int bitterness,  int body,  bool isLoading,  bool isSaving,  String? error,  bool isSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TastingEditState() when $default != null:
return $default(_that.drinkLogId,_that.originalLog,_that.rating,_that.memo,_that.acidity,_that.aroma,_that.sweetness,_that.bitterness,_that.body,_that.isLoading,_that.isSaving,_that.error,_that.isSuccess);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DrinkLogId drinkLogId,  DrinkLog? originalLog,  int? rating,  String? memo,  int acidity,  int aroma,  int sweetness,  int bitterness,  int body,  bool isLoading,  bool isSaving,  String? error,  bool isSuccess)  $default,) {final _that = this;
switch (_that) {
case _TastingEditState():
return $default(_that.drinkLogId,_that.originalLog,_that.rating,_that.memo,_that.acidity,_that.aroma,_that.sweetness,_that.bitterness,_that.body,_that.isLoading,_that.isSaving,_that.error,_that.isSuccess);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DrinkLogId drinkLogId,  DrinkLog? originalLog,  int? rating,  String? memo,  int acidity,  int aroma,  int sweetness,  int bitterness,  int body,  bool isLoading,  bool isSaving,  String? error,  bool isSuccess)?  $default,) {final _that = this;
switch (_that) {
case _TastingEditState() when $default != null:
return $default(_that.drinkLogId,_that.originalLog,_that.rating,_that.memo,_that.acidity,_that.aroma,_that.sweetness,_that.bitterness,_that.body,_that.isLoading,_that.isSaving,_that.error,_that.isSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _TastingEditState implements TastingEditState {
  const _TastingEditState({required this.drinkLogId, this.originalLog, this.rating, this.memo, this.acidity = 50, this.aroma = 50, this.sweetness = 50, this.bitterness = 50, this.body = 50, this.isLoading = true, this.isSaving = false, this.error, this.isSuccess = false});
  

@override final  DrinkLogId drinkLogId;
@override final  DrinkLog? originalLog;
@override final  int? rating;
@override final  String? memo;
@override@JsonKey() final  int acidity;
@override@JsonKey() final  int aroma;
@override@JsonKey() final  int sweetness;
@override@JsonKey() final  int bitterness;
@override@JsonKey() final  int body;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSaving;
@override final  String? error;
@override@JsonKey() final  bool isSuccess;

/// Create a copy of TastingEditState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TastingEditStateCopyWith<_TastingEditState> get copyWith => __$TastingEditStateCopyWithImpl<_TastingEditState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TastingEditState&&(identical(other.drinkLogId, drinkLogId) || other.drinkLogId == drinkLogId)&&(identical(other.originalLog, originalLog) || other.originalLog == originalLog)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.memo, memo) || other.memo == memo)&&(identical(other.acidity, acidity) || other.acidity == acidity)&&(identical(other.aroma, aroma) || other.aroma == aroma)&&(identical(other.sweetness, sweetness) || other.sweetness == sweetness)&&(identical(other.bitterness, bitterness) || other.bitterness == bitterness)&&(identical(other.body, body) || other.body == body)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving)&&(identical(other.error, error) || other.error == error)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,drinkLogId,originalLog,rating,memo,acidity,aroma,sweetness,bitterness,body,isLoading,isSaving,error,isSuccess);

@override
String toString() {
  return 'TastingEditState(drinkLogId: $drinkLogId, originalLog: $originalLog, rating: $rating, memo: $memo, acidity: $acidity, aroma: $aroma, sweetness: $sweetness, bitterness: $bitterness, body: $body, isLoading: $isLoading, isSaving: $isSaving, error: $error, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class _$TastingEditStateCopyWith<$Res> implements $TastingEditStateCopyWith<$Res> {
  factory _$TastingEditStateCopyWith(_TastingEditState value, $Res Function(_TastingEditState) _then) = __$TastingEditStateCopyWithImpl;
@override @useResult
$Res call({
 DrinkLogId drinkLogId, DrinkLog? originalLog, int? rating, String? memo, int acidity, int aroma, int sweetness, int bitterness, int body, bool isLoading, bool isSaving, String? error, bool isSuccess
});


@override $DrinkLogCopyWith<$Res>? get originalLog;

}
/// @nodoc
class __$TastingEditStateCopyWithImpl<$Res>
    implements _$TastingEditStateCopyWith<$Res> {
  __$TastingEditStateCopyWithImpl(this._self, this._then);

  final _TastingEditState _self;
  final $Res Function(_TastingEditState) _then;

/// Create a copy of TastingEditState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? drinkLogId = null,Object? originalLog = freezed,Object? rating = freezed,Object? memo = freezed,Object? acidity = null,Object? aroma = null,Object? sweetness = null,Object? bitterness = null,Object? body = null,Object? isLoading = null,Object? isSaving = null,Object? error = freezed,Object? isSuccess = null,}) {
  return _then(_TastingEditState(
drinkLogId: null == drinkLogId ? _self.drinkLogId : drinkLogId // ignore: cast_nullable_to_non_nullable
as DrinkLogId,originalLog: freezed == originalLog ? _self.originalLog : originalLog // ignore: cast_nullable_to_non_nullable
as DrinkLog?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int?,memo: freezed == memo ? _self.memo : memo // ignore: cast_nullable_to_non_nullable
as String?,acidity: null == acidity ? _self.acidity : acidity // ignore: cast_nullable_to_non_nullable
as int,aroma: null == aroma ? _self.aroma : aroma // ignore: cast_nullable_to_non_nullable
as int,sweetness: null == sweetness ? _self.sweetness : sweetness // ignore: cast_nullable_to_non_nullable
as int,bitterness: null == bitterness ? _self.bitterness : bitterness // ignore: cast_nullable_to_non_nullable
as int,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of TastingEditState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DrinkLogCopyWith<$Res>? get originalLog {
    if (_self.originalLog == null) {
    return null;
  }

  return $DrinkLogCopyWith<$Res>(_self.originalLog!, (value) {
    return _then(_self.copyWith(originalLog: value));
  });
}
}

// dart format on
