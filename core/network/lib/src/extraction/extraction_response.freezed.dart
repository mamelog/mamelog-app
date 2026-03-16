// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extraction_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExtractionResponse {

 ExtractionId get id; ExtractionStatus get status;@JsonKey(name: 'input_type') ExtractionInputType get inputType;@JsonKey(name: 'created_at') DateTime get createdAt; BeanResponse? get bean;@JsonKey(name: 'confidence_scores') Map<String, double>? get confidenceScores;@JsonKey(name: 'error_message') String? get errorMessage;
/// Create a copy of ExtractionResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtractionResponseCopyWith<ExtractionResponse> get copyWith => _$ExtractionResponseCopyWithImpl<ExtractionResponse>(this as ExtractionResponse, _$identity);

  /// Serializes this ExtractionResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtractionResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.inputType, inputType) || other.inputType == inputType)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.bean, bean) || other.bean == bean)&&const DeepCollectionEquality().equals(other.confidenceScores, confidenceScores)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,inputType,createdAt,bean,const DeepCollectionEquality().hash(confidenceScores),errorMessage);

@override
String toString() {
  return 'ExtractionResponse(id: $id, status: $status, inputType: $inputType, createdAt: $createdAt, bean: $bean, confidenceScores: $confidenceScores, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $ExtractionResponseCopyWith<$Res>  {
  factory $ExtractionResponseCopyWith(ExtractionResponse value, $Res Function(ExtractionResponse) _then) = _$ExtractionResponseCopyWithImpl;
@useResult
$Res call({
 ExtractionId id, ExtractionStatus status,@JsonKey(name: 'input_type') ExtractionInputType inputType,@JsonKey(name: 'created_at') DateTime createdAt, BeanResponse? bean,@JsonKey(name: 'confidence_scores') Map<String, double>? confidenceScores,@JsonKey(name: 'error_message') String? errorMessage
});


$BeanResponseCopyWith<$Res>? get bean;

}
/// @nodoc
class _$ExtractionResponseCopyWithImpl<$Res>
    implements $ExtractionResponseCopyWith<$Res> {
  _$ExtractionResponseCopyWithImpl(this._self, this._then);

  final ExtractionResponse _self;
  final $Res Function(ExtractionResponse) _then;

/// Create a copy of ExtractionResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? inputType = null,Object? createdAt = null,Object? bean = freezed,Object? confidenceScores = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as ExtractionId,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ExtractionStatus,inputType: null == inputType ? _self.inputType : inputType // ignore: cast_nullable_to_non_nullable
as ExtractionInputType,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,bean: freezed == bean ? _self.bean : bean // ignore: cast_nullable_to_non_nullable
as BeanResponse?,confidenceScores: freezed == confidenceScores ? _self.confidenceScores : confidenceScores // ignore: cast_nullable_to_non_nullable
as Map<String, double>?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ExtractionResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeanResponseCopyWith<$Res>? get bean {
    if (_self.bean == null) {
    return null;
  }

  return $BeanResponseCopyWith<$Res>(_self.bean!, (value) {
    return _then(_self.copyWith(bean: value));
  });
}
}


/// Adds pattern-matching-related methods to [ExtractionResponse].
extension ExtractionResponsePatterns on ExtractionResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExtractionResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExtractionResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExtractionResponse value)  $default,){
final _that = this;
switch (_that) {
case _ExtractionResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExtractionResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ExtractionResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ExtractionId id,  ExtractionStatus status, @JsonKey(name: 'input_type')  ExtractionInputType inputType, @JsonKey(name: 'created_at')  DateTime createdAt,  BeanResponse? bean, @JsonKey(name: 'confidence_scores')  Map<String, double>? confidenceScores, @JsonKey(name: 'error_message')  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExtractionResponse() when $default != null:
return $default(_that.id,_that.status,_that.inputType,_that.createdAt,_that.bean,_that.confidenceScores,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ExtractionId id,  ExtractionStatus status, @JsonKey(name: 'input_type')  ExtractionInputType inputType, @JsonKey(name: 'created_at')  DateTime createdAt,  BeanResponse? bean, @JsonKey(name: 'confidence_scores')  Map<String, double>? confidenceScores, @JsonKey(name: 'error_message')  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _ExtractionResponse():
return $default(_that.id,_that.status,_that.inputType,_that.createdAt,_that.bean,_that.confidenceScores,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ExtractionId id,  ExtractionStatus status, @JsonKey(name: 'input_type')  ExtractionInputType inputType, @JsonKey(name: 'created_at')  DateTime createdAt,  BeanResponse? bean, @JsonKey(name: 'confidence_scores')  Map<String, double>? confidenceScores, @JsonKey(name: 'error_message')  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _ExtractionResponse() when $default != null:
return $default(_that.id,_that.status,_that.inputType,_that.createdAt,_that.bean,_that.confidenceScores,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExtractionResponse implements ExtractionResponse {
  const _ExtractionResponse({required this.id, required this.status, @JsonKey(name: 'input_type') required this.inputType, @JsonKey(name: 'created_at') required this.createdAt, this.bean, @JsonKey(name: 'confidence_scores') final  Map<String, double>? confidenceScores, @JsonKey(name: 'error_message') this.errorMessage}): _confidenceScores = confidenceScores;
  factory _ExtractionResponse.fromJson(Map<String, dynamic> json) => _$ExtractionResponseFromJson(json);

@override final  ExtractionId id;
@override final  ExtractionStatus status;
@override@JsonKey(name: 'input_type') final  ExtractionInputType inputType;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override final  BeanResponse? bean;
 final  Map<String, double>? _confidenceScores;
@override@JsonKey(name: 'confidence_scores') Map<String, double>? get confidenceScores {
  final value = _confidenceScores;
  if (value == null) return null;
  if (_confidenceScores is EqualUnmodifiableMapView) return _confidenceScores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey(name: 'error_message') final  String? errorMessage;

/// Create a copy of ExtractionResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExtractionResponseCopyWith<_ExtractionResponse> get copyWith => __$ExtractionResponseCopyWithImpl<_ExtractionResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExtractionResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExtractionResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.inputType, inputType) || other.inputType == inputType)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.bean, bean) || other.bean == bean)&&const DeepCollectionEquality().equals(other._confidenceScores, _confidenceScores)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,inputType,createdAt,bean,const DeepCollectionEquality().hash(_confidenceScores),errorMessage);

@override
String toString() {
  return 'ExtractionResponse(id: $id, status: $status, inputType: $inputType, createdAt: $createdAt, bean: $bean, confidenceScores: $confidenceScores, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ExtractionResponseCopyWith<$Res> implements $ExtractionResponseCopyWith<$Res> {
  factory _$ExtractionResponseCopyWith(_ExtractionResponse value, $Res Function(_ExtractionResponse) _then) = __$ExtractionResponseCopyWithImpl;
@override @useResult
$Res call({
 ExtractionId id, ExtractionStatus status,@JsonKey(name: 'input_type') ExtractionInputType inputType,@JsonKey(name: 'created_at') DateTime createdAt, BeanResponse? bean,@JsonKey(name: 'confidence_scores') Map<String, double>? confidenceScores,@JsonKey(name: 'error_message') String? errorMessage
});


@override $BeanResponseCopyWith<$Res>? get bean;

}
/// @nodoc
class __$ExtractionResponseCopyWithImpl<$Res>
    implements _$ExtractionResponseCopyWith<$Res> {
  __$ExtractionResponseCopyWithImpl(this._self, this._then);

  final _ExtractionResponse _self;
  final $Res Function(_ExtractionResponse) _then;

/// Create a copy of ExtractionResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? inputType = null,Object? createdAt = null,Object? bean = freezed,Object? confidenceScores = freezed,Object? errorMessage = freezed,}) {
  return _then(_ExtractionResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as ExtractionId,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ExtractionStatus,inputType: null == inputType ? _self.inputType : inputType // ignore: cast_nullable_to_non_nullable
as ExtractionInputType,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,bean: freezed == bean ? _self.bean : bean // ignore: cast_nullable_to_non_nullable
as BeanResponse?,confidenceScores: freezed == confidenceScores ? _self._confidenceScores : confidenceScores // ignore: cast_nullable_to_non_nullable
as Map<String, double>?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ExtractionResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeanResponseCopyWith<$Res>? get bean {
    if (_self.bean == null) {
    return null;
  }

  return $BeanResponseCopyWith<$Res>(_self.bean!, (value) {
    return _then(_self.copyWith(bean: value));
  });
}
}

// dart format on
