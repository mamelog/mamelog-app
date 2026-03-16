// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bean_origin_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BeanOriginResponse {

 CountrySummary? get country; String? get region; String? get farm; VarietySummary? get variety;@JsonKey(name: 'processing_method') ProcessingMethodSummary? get processingMethod; String? get elevation;
/// Create a copy of BeanOriginResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BeanOriginResponseCopyWith<BeanOriginResponse> get copyWith => _$BeanOriginResponseCopyWithImpl<BeanOriginResponse>(this as BeanOriginResponse, _$identity);

  /// Serializes this BeanOriginResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BeanOriginResponse&&(identical(other.country, country) || other.country == country)&&(identical(other.region, region) || other.region == region)&&(identical(other.farm, farm) || other.farm == farm)&&(identical(other.variety, variety) || other.variety == variety)&&(identical(other.processingMethod, processingMethod) || other.processingMethod == processingMethod)&&(identical(other.elevation, elevation) || other.elevation == elevation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,country,region,farm,variety,processingMethod,elevation);

@override
String toString() {
  return 'BeanOriginResponse(country: $country, region: $region, farm: $farm, variety: $variety, processingMethod: $processingMethod, elevation: $elevation)';
}


}

/// @nodoc
abstract mixin class $BeanOriginResponseCopyWith<$Res>  {
  factory $BeanOriginResponseCopyWith(BeanOriginResponse value, $Res Function(BeanOriginResponse) _then) = _$BeanOriginResponseCopyWithImpl;
@useResult
$Res call({
 CountrySummary? country, String? region, String? farm, VarietySummary? variety,@JsonKey(name: 'processing_method') ProcessingMethodSummary? processingMethod, String? elevation
});


$CountrySummaryCopyWith<$Res>? get country;$VarietySummaryCopyWith<$Res>? get variety;$ProcessingMethodSummaryCopyWith<$Res>? get processingMethod;

}
/// @nodoc
class _$BeanOriginResponseCopyWithImpl<$Res>
    implements $BeanOriginResponseCopyWith<$Res> {
  _$BeanOriginResponseCopyWithImpl(this._self, this._then);

  final BeanOriginResponse _self;
  final $Res Function(BeanOriginResponse) _then;

/// Create a copy of BeanOriginResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? country = freezed,Object? region = freezed,Object? farm = freezed,Object? variety = freezed,Object? processingMethod = freezed,Object? elevation = freezed,}) {
  return _then(_self.copyWith(
country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as CountrySummary?,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String?,farm: freezed == farm ? _self.farm : farm // ignore: cast_nullable_to_non_nullable
as String?,variety: freezed == variety ? _self.variety : variety // ignore: cast_nullable_to_non_nullable
as VarietySummary?,processingMethod: freezed == processingMethod ? _self.processingMethod : processingMethod // ignore: cast_nullable_to_non_nullable
as ProcessingMethodSummary?,elevation: freezed == elevation ? _self.elevation : elevation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of BeanOriginResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CountrySummaryCopyWith<$Res>? get country {
    if (_self.country == null) {
    return null;
  }

  return $CountrySummaryCopyWith<$Res>(_self.country!, (value) {
    return _then(_self.copyWith(country: value));
  });
}/// Create a copy of BeanOriginResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VarietySummaryCopyWith<$Res>? get variety {
    if (_self.variety == null) {
    return null;
  }

  return $VarietySummaryCopyWith<$Res>(_self.variety!, (value) {
    return _then(_self.copyWith(variety: value));
  });
}/// Create a copy of BeanOriginResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessingMethodSummaryCopyWith<$Res>? get processingMethod {
    if (_self.processingMethod == null) {
    return null;
  }

  return $ProcessingMethodSummaryCopyWith<$Res>(_self.processingMethod!, (value) {
    return _then(_self.copyWith(processingMethod: value));
  });
}
}


/// Adds pattern-matching-related methods to [BeanOriginResponse].
extension BeanOriginResponsePatterns on BeanOriginResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BeanOriginResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BeanOriginResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BeanOriginResponse value)  $default,){
final _that = this;
switch (_that) {
case _BeanOriginResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BeanOriginResponse value)?  $default,){
final _that = this;
switch (_that) {
case _BeanOriginResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CountrySummary? country,  String? region,  String? farm,  VarietySummary? variety, @JsonKey(name: 'processing_method')  ProcessingMethodSummary? processingMethod,  String? elevation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BeanOriginResponse() when $default != null:
return $default(_that.country,_that.region,_that.farm,_that.variety,_that.processingMethod,_that.elevation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CountrySummary? country,  String? region,  String? farm,  VarietySummary? variety, @JsonKey(name: 'processing_method')  ProcessingMethodSummary? processingMethod,  String? elevation)  $default,) {final _that = this;
switch (_that) {
case _BeanOriginResponse():
return $default(_that.country,_that.region,_that.farm,_that.variety,_that.processingMethod,_that.elevation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CountrySummary? country,  String? region,  String? farm,  VarietySummary? variety, @JsonKey(name: 'processing_method')  ProcessingMethodSummary? processingMethod,  String? elevation)?  $default,) {final _that = this;
switch (_that) {
case _BeanOriginResponse() when $default != null:
return $default(_that.country,_that.region,_that.farm,_that.variety,_that.processingMethod,_that.elevation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BeanOriginResponse implements BeanOriginResponse {
  const _BeanOriginResponse({this.country, this.region, this.farm, this.variety, @JsonKey(name: 'processing_method') this.processingMethod, this.elevation});
  factory _BeanOriginResponse.fromJson(Map<String, dynamic> json) => _$BeanOriginResponseFromJson(json);

@override final  CountrySummary? country;
@override final  String? region;
@override final  String? farm;
@override final  VarietySummary? variety;
@override@JsonKey(name: 'processing_method') final  ProcessingMethodSummary? processingMethod;
@override final  String? elevation;

/// Create a copy of BeanOriginResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeanOriginResponseCopyWith<_BeanOriginResponse> get copyWith => __$BeanOriginResponseCopyWithImpl<_BeanOriginResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BeanOriginResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeanOriginResponse&&(identical(other.country, country) || other.country == country)&&(identical(other.region, region) || other.region == region)&&(identical(other.farm, farm) || other.farm == farm)&&(identical(other.variety, variety) || other.variety == variety)&&(identical(other.processingMethod, processingMethod) || other.processingMethod == processingMethod)&&(identical(other.elevation, elevation) || other.elevation == elevation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,country,region,farm,variety,processingMethod,elevation);

@override
String toString() {
  return 'BeanOriginResponse(country: $country, region: $region, farm: $farm, variety: $variety, processingMethod: $processingMethod, elevation: $elevation)';
}


}

/// @nodoc
abstract mixin class _$BeanOriginResponseCopyWith<$Res> implements $BeanOriginResponseCopyWith<$Res> {
  factory _$BeanOriginResponseCopyWith(_BeanOriginResponse value, $Res Function(_BeanOriginResponse) _then) = __$BeanOriginResponseCopyWithImpl;
@override @useResult
$Res call({
 CountrySummary? country, String? region, String? farm, VarietySummary? variety,@JsonKey(name: 'processing_method') ProcessingMethodSummary? processingMethod, String? elevation
});


@override $CountrySummaryCopyWith<$Res>? get country;@override $VarietySummaryCopyWith<$Res>? get variety;@override $ProcessingMethodSummaryCopyWith<$Res>? get processingMethod;

}
/// @nodoc
class __$BeanOriginResponseCopyWithImpl<$Res>
    implements _$BeanOriginResponseCopyWith<$Res> {
  __$BeanOriginResponseCopyWithImpl(this._self, this._then);

  final _BeanOriginResponse _self;
  final $Res Function(_BeanOriginResponse) _then;

/// Create a copy of BeanOriginResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? country = freezed,Object? region = freezed,Object? farm = freezed,Object? variety = freezed,Object? processingMethod = freezed,Object? elevation = freezed,}) {
  return _then(_BeanOriginResponse(
country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as CountrySummary?,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String?,farm: freezed == farm ? _self.farm : farm // ignore: cast_nullable_to_non_nullable
as String?,variety: freezed == variety ? _self.variety : variety // ignore: cast_nullable_to_non_nullable
as VarietySummary?,processingMethod: freezed == processingMethod ? _self.processingMethod : processingMethod // ignore: cast_nullable_to_non_nullable
as ProcessingMethodSummary?,elevation: freezed == elevation ? _self.elevation : elevation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of BeanOriginResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CountrySummaryCopyWith<$Res>? get country {
    if (_self.country == null) {
    return null;
  }

  return $CountrySummaryCopyWith<$Res>(_self.country!, (value) {
    return _then(_self.copyWith(country: value));
  });
}/// Create a copy of BeanOriginResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VarietySummaryCopyWith<$Res>? get variety {
    if (_self.variety == null) {
    return null;
  }

  return $VarietySummaryCopyWith<$Res>(_self.variety!, (value) {
    return _then(_self.copyWith(variety: value));
  });
}/// Create a copy of BeanOriginResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessingMethodSummaryCopyWith<$Res>? get processingMethod {
    if (_self.processingMethod == null) {
    return null;
  }

  return $ProcessingMethodSummaryCopyWith<$Res>(_self.processingMethod!, (value) {
    return _then(_self.copyWith(processingMethod: value));
  });
}
}

// dart format on
