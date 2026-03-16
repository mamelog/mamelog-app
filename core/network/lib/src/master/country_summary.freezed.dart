// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CountrySummary {

 CountryId get id; String get name;@JsonKey(name: 'iso_alpha2') String get isoAlpha2;
/// Create a copy of CountrySummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountrySummaryCopyWith<CountrySummary> get copyWith => _$CountrySummaryCopyWithImpl<CountrySummary>(this as CountrySummary, _$identity);

  /// Serializes this CountrySummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountrySummary&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isoAlpha2, isoAlpha2) || other.isoAlpha2 == isoAlpha2));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,isoAlpha2);

@override
String toString() {
  return 'CountrySummary(id: $id, name: $name, isoAlpha2: $isoAlpha2)';
}


}

/// @nodoc
abstract mixin class $CountrySummaryCopyWith<$Res>  {
  factory $CountrySummaryCopyWith(CountrySummary value, $Res Function(CountrySummary) _then) = _$CountrySummaryCopyWithImpl;
@useResult
$Res call({
 CountryId id, String name,@JsonKey(name: 'iso_alpha2') String isoAlpha2
});




}
/// @nodoc
class _$CountrySummaryCopyWithImpl<$Res>
    implements $CountrySummaryCopyWith<$Res> {
  _$CountrySummaryCopyWithImpl(this._self, this._then);

  final CountrySummary _self;
  final $Res Function(CountrySummary) _then;

/// Create a copy of CountrySummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? isoAlpha2 = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as CountryId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isoAlpha2: null == isoAlpha2 ? _self.isoAlpha2 : isoAlpha2 // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CountrySummary].
extension CountrySummaryPatterns on CountrySummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CountrySummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CountrySummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CountrySummary value)  $default,){
final _that = this;
switch (_that) {
case _CountrySummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CountrySummary value)?  $default,){
final _that = this;
switch (_that) {
case _CountrySummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CountryId id,  String name, @JsonKey(name: 'iso_alpha2')  String isoAlpha2)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CountrySummary() when $default != null:
return $default(_that.id,_that.name,_that.isoAlpha2);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CountryId id,  String name, @JsonKey(name: 'iso_alpha2')  String isoAlpha2)  $default,) {final _that = this;
switch (_that) {
case _CountrySummary():
return $default(_that.id,_that.name,_that.isoAlpha2);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CountryId id,  String name, @JsonKey(name: 'iso_alpha2')  String isoAlpha2)?  $default,) {final _that = this;
switch (_that) {
case _CountrySummary() when $default != null:
return $default(_that.id,_that.name,_that.isoAlpha2);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CountrySummary implements CountrySummary {
  const _CountrySummary({required this.id, required this.name, @JsonKey(name: 'iso_alpha2') required this.isoAlpha2});
  factory _CountrySummary.fromJson(Map<String, dynamic> json) => _$CountrySummaryFromJson(json);

@override final  CountryId id;
@override final  String name;
@override@JsonKey(name: 'iso_alpha2') final  String isoAlpha2;

/// Create a copy of CountrySummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountrySummaryCopyWith<_CountrySummary> get copyWith => __$CountrySummaryCopyWithImpl<_CountrySummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CountrySummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountrySummary&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isoAlpha2, isoAlpha2) || other.isoAlpha2 == isoAlpha2));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,isoAlpha2);

@override
String toString() {
  return 'CountrySummary(id: $id, name: $name, isoAlpha2: $isoAlpha2)';
}


}

/// @nodoc
abstract mixin class _$CountrySummaryCopyWith<$Res> implements $CountrySummaryCopyWith<$Res> {
  factory _$CountrySummaryCopyWith(_CountrySummary value, $Res Function(_CountrySummary) _then) = __$CountrySummaryCopyWithImpl;
@override @useResult
$Res call({
 CountryId id, String name,@JsonKey(name: 'iso_alpha2') String isoAlpha2
});




}
/// @nodoc
class __$CountrySummaryCopyWithImpl<$Res>
    implements _$CountrySummaryCopyWith<$Res> {
  __$CountrySummaryCopyWithImpl(this._self, this._then);

  final _CountrySummary _self;
  final $Res Function(_CountrySummary) _then;

/// Create a copy of CountrySummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? isoAlpha2 = null,}) {
  return _then(_CountrySummary(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as CountryId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isoAlpha2: null == isoAlpha2 ? _self.isoAlpha2 : isoAlpha2 // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
