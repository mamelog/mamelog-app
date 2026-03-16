// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'roaster_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RoasterSummary {

 RoasterId get id; String get name;
/// Create a copy of RoasterSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoasterSummaryCopyWith<RoasterSummary> get copyWith => _$RoasterSummaryCopyWithImpl<RoasterSummary>(this as RoasterSummary, _$identity);

  /// Serializes this RoasterSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoasterSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'RoasterSummary(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $RoasterSummaryCopyWith<$Res>  {
  factory $RoasterSummaryCopyWith(RoasterSummary value, $Res Function(RoasterSummary) _then) = _$RoasterSummaryCopyWithImpl;
@useResult
$Res call({
 RoasterId id, String name
});




}
/// @nodoc
class _$RoasterSummaryCopyWithImpl<$Res>
    implements $RoasterSummaryCopyWith<$Res> {
  _$RoasterSummaryCopyWithImpl(this._self, this._then);

  final RoasterSummary _self;
  final $Res Function(RoasterSummary) _then;

/// Create a copy of RoasterSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as RoasterId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RoasterSummary].
extension RoasterSummaryPatterns on RoasterSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoasterSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoasterSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoasterSummary value)  $default,){
final _that = this;
switch (_that) {
case _RoasterSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoasterSummary value)?  $default,){
final _that = this;
switch (_that) {
case _RoasterSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RoasterId id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoasterSummary() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RoasterId id,  String name)  $default,) {final _that = this;
switch (_that) {
case _RoasterSummary():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RoasterId id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _RoasterSummary() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RoasterSummary implements RoasterSummary {
  const _RoasterSummary({required this.id, required this.name});
  factory _RoasterSummary.fromJson(Map<String, dynamic> json) => _$RoasterSummaryFromJson(json);

@override final  RoasterId id;
@override final  String name;

/// Create a copy of RoasterSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoasterSummaryCopyWith<_RoasterSummary> get copyWith => __$RoasterSummaryCopyWithImpl<_RoasterSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RoasterSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoasterSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'RoasterSummary(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$RoasterSummaryCopyWith<$Res> implements $RoasterSummaryCopyWith<$Res> {
  factory _$RoasterSummaryCopyWith(_RoasterSummary value, $Res Function(_RoasterSummary) _then) = __$RoasterSummaryCopyWithImpl;
@override @useResult
$Res call({
 RoasterId id, String name
});




}
/// @nodoc
class __$RoasterSummaryCopyWithImpl<$Res>
    implements _$RoasterSummaryCopyWith<$Res> {
  __$RoasterSummaryCopyWithImpl(this._self, this._then);

  final _RoasterSummary _self;
  final $Res Function(_RoasterSummary) _then;

/// Create a copy of RoasterSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_RoasterSummary(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as RoasterId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
