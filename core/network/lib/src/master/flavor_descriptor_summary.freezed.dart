// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flavor_descriptor_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FlavorDescriptorSummary {

 FlavorDescriptorId get id; String get name;@JsonKey(name: 'name_ja') String? get nameJa;
/// Create a copy of FlavorDescriptorSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FlavorDescriptorSummaryCopyWith<FlavorDescriptorSummary> get copyWith => _$FlavorDescriptorSummaryCopyWithImpl<FlavorDescriptorSummary>(this as FlavorDescriptorSummary, _$identity);

  /// Serializes this FlavorDescriptorSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FlavorDescriptorSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameJa, nameJa) || other.nameJa == nameJa));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,nameJa);

@override
String toString() {
  return 'FlavorDescriptorSummary(id: $id, name: $name, nameJa: $nameJa)';
}


}

/// @nodoc
abstract mixin class $FlavorDescriptorSummaryCopyWith<$Res>  {
  factory $FlavorDescriptorSummaryCopyWith(FlavorDescriptorSummary value, $Res Function(FlavorDescriptorSummary) _then) = _$FlavorDescriptorSummaryCopyWithImpl;
@useResult
$Res call({
 FlavorDescriptorId id, String name,@JsonKey(name: 'name_ja') String? nameJa
});




}
/// @nodoc
class _$FlavorDescriptorSummaryCopyWithImpl<$Res>
    implements $FlavorDescriptorSummaryCopyWith<$Res> {
  _$FlavorDescriptorSummaryCopyWithImpl(this._self, this._then);

  final FlavorDescriptorSummary _self;
  final $Res Function(FlavorDescriptorSummary) _then;

/// Create a copy of FlavorDescriptorSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? nameJa = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as FlavorDescriptorId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameJa: freezed == nameJa ? _self.nameJa : nameJa // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FlavorDescriptorSummary].
extension FlavorDescriptorSummaryPatterns on FlavorDescriptorSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FlavorDescriptorSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FlavorDescriptorSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FlavorDescriptorSummary value)  $default,){
final _that = this;
switch (_that) {
case _FlavorDescriptorSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FlavorDescriptorSummary value)?  $default,){
final _that = this;
switch (_that) {
case _FlavorDescriptorSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FlavorDescriptorId id,  String name, @JsonKey(name: 'name_ja')  String? nameJa)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FlavorDescriptorSummary() when $default != null:
return $default(_that.id,_that.name,_that.nameJa);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FlavorDescriptorId id,  String name, @JsonKey(name: 'name_ja')  String? nameJa)  $default,) {final _that = this;
switch (_that) {
case _FlavorDescriptorSummary():
return $default(_that.id,_that.name,_that.nameJa);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FlavorDescriptorId id,  String name, @JsonKey(name: 'name_ja')  String? nameJa)?  $default,) {final _that = this;
switch (_that) {
case _FlavorDescriptorSummary() when $default != null:
return $default(_that.id,_that.name,_that.nameJa);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FlavorDescriptorSummary implements FlavorDescriptorSummary {
  const _FlavorDescriptorSummary({required this.id, required this.name, @JsonKey(name: 'name_ja') this.nameJa});
  factory _FlavorDescriptorSummary.fromJson(Map<String, dynamic> json) => _$FlavorDescriptorSummaryFromJson(json);

@override final  FlavorDescriptorId id;
@override final  String name;
@override@JsonKey(name: 'name_ja') final  String? nameJa;

/// Create a copy of FlavorDescriptorSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlavorDescriptorSummaryCopyWith<_FlavorDescriptorSummary> get copyWith => __$FlavorDescriptorSummaryCopyWithImpl<_FlavorDescriptorSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FlavorDescriptorSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FlavorDescriptorSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameJa, nameJa) || other.nameJa == nameJa));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,nameJa);

@override
String toString() {
  return 'FlavorDescriptorSummary(id: $id, name: $name, nameJa: $nameJa)';
}


}

/// @nodoc
abstract mixin class _$FlavorDescriptorSummaryCopyWith<$Res> implements $FlavorDescriptorSummaryCopyWith<$Res> {
  factory _$FlavorDescriptorSummaryCopyWith(_FlavorDescriptorSummary value, $Res Function(_FlavorDescriptorSummary) _then) = __$FlavorDescriptorSummaryCopyWithImpl;
@override @useResult
$Res call({
 FlavorDescriptorId id, String name,@JsonKey(name: 'name_ja') String? nameJa
});




}
/// @nodoc
class __$FlavorDescriptorSummaryCopyWithImpl<$Res>
    implements _$FlavorDescriptorSummaryCopyWith<$Res> {
  __$FlavorDescriptorSummaryCopyWithImpl(this._self, this._then);

  final _FlavorDescriptorSummary _self;
  final $Res Function(_FlavorDescriptorSummary) _then;

/// Create a copy of FlavorDescriptorSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? nameJa = freezed,}) {
  return _then(_FlavorDescriptorSummary(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as FlavorDescriptorId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameJa: freezed == nameJa ? _self.nameJa : nameJa // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
