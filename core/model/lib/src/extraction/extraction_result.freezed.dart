// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extraction_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExtractionResult {

 String get id; ExtractionStatus get status; ExtractionInputType get inputType; DateTime get createdAt; Bean? get bean; Map<String, double> get confidenceScores; String? get errorMessage;
/// Create a copy of ExtractionResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtractionResultCopyWith<ExtractionResult> get copyWith => _$ExtractionResultCopyWithImpl<ExtractionResult>(this as ExtractionResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtractionResult&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.inputType, inputType) || other.inputType == inputType)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.bean, bean) || other.bean == bean)&&const DeepCollectionEquality().equals(other.confidenceScores, confidenceScores)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,id,status,inputType,createdAt,bean,const DeepCollectionEquality().hash(confidenceScores),errorMessage);

@override
String toString() {
  return 'ExtractionResult(id: $id, status: $status, inputType: $inputType, createdAt: $createdAt, bean: $bean, confidenceScores: $confidenceScores, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $ExtractionResultCopyWith<$Res>  {
  factory $ExtractionResultCopyWith(ExtractionResult value, $Res Function(ExtractionResult) _then) = _$ExtractionResultCopyWithImpl;
@useResult
$Res call({
 String id, ExtractionStatus status, ExtractionInputType inputType, DateTime createdAt, Bean? bean, Map<String, double> confidenceScores, String? errorMessage
});


$BeanCopyWith<$Res>? get bean;

}
/// @nodoc
class _$ExtractionResultCopyWithImpl<$Res>
    implements $ExtractionResultCopyWith<$Res> {
  _$ExtractionResultCopyWithImpl(this._self, this._then);

  final ExtractionResult _self;
  final $Res Function(ExtractionResult) _then;

/// Create a copy of ExtractionResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? inputType = null,Object? createdAt = null,Object? bean = freezed,Object? confidenceScores = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ExtractionStatus,inputType: null == inputType ? _self.inputType : inputType // ignore: cast_nullable_to_non_nullable
as ExtractionInputType,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,bean: freezed == bean ? _self.bean : bean // ignore: cast_nullable_to_non_nullable
as Bean?,confidenceScores: null == confidenceScores ? _self.confidenceScores : confidenceScores // ignore: cast_nullable_to_non_nullable
as Map<String, double>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ExtractionResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeanCopyWith<$Res>? get bean {
    if (_self.bean == null) {
    return null;
  }

  return $BeanCopyWith<$Res>(_self.bean!, (value) {
    return _then(_self.copyWith(bean: value));
  });
}
}



/// @nodoc


class _ExtractionResult implements ExtractionResult {
  const _ExtractionResult({required this.id, required this.status, required this.inputType, required this.createdAt, this.bean, final  Map<String, double> confidenceScores = const {}, this.errorMessage}): _confidenceScores = confidenceScores;
  

@override final  String id;
@override final  ExtractionStatus status;
@override final  ExtractionInputType inputType;
@override final  DateTime createdAt;
@override final  Bean? bean;
 final  Map<String, double> _confidenceScores;
@override@JsonKey() Map<String, double> get confidenceScores {
  if (_confidenceScores is EqualUnmodifiableMapView) return _confidenceScores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_confidenceScores);
}

@override final  String? errorMessage;

/// Create a copy of ExtractionResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExtractionResultCopyWith<_ExtractionResult> get copyWith => __$ExtractionResultCopyWithImpl<_ExtractionResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExtractionResult&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.inputType, inputType) || other.inputType == inputType)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.bean, bean) || other.bean == bean)&&const DeepCollectionEquality().equals(other._confidenceScores, _confidenceScores)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,id,status,inputType,createdAt,bean,const DeepCollectionEquality().hash(_confidenceScores),errorMessage);

@override
String toString() {
  return 'ExtractionResult(id: $id, status: $status, inputType: $inputType, createdAt: $createdAt, bean: $bean, confidenceScores: $confidenceScores, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ExtractionResultCopyWith<$Res> implements $ExtractionResultCopyWith<$Res> {
  factory _$ExtractionResultCopyWith(_ExtractionResult value, $Res Function(_ExtractionResult) _then) = __$ExtractionResultCopyWithImpl;
@override @useResult
$Res call({
 String id, ExtractionStatus status, ExtractionInputType inputType, DateTime createdAt, Bean? bean, Map<String, double> confidenceScores, String? errorMessage
});


@override $BeanCopyWith<$Res>? get bean;

}
/// @nodoc
class __$ExtractionResultCopyWithImpl<$Res>
    implements _$ExtractionResultCopyWith<$Res> {
  __$ExtractionResultCopyWithImpl(this._self, this._then);

  final _ExtractionResult _self;
  final $Res Function(_ExtractionResult) _then;

/// Create a copy of ExtractionResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? inputType = null,Object? createdAt = null,Object? bean = freezed,Object? confidenceScores = null,Object? errorMessage = freezed,}) {
  return _then(_ExtractionResult(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ExtractionStatus,inputType: null == inputType ? _self.inputType : inputType // ignore: cast_nullable_to_non_nullable
as ExtractionInputType,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,bean: freezed == bean ? _self.bean : bean // ignore: cast_nullable_to_non_nullable
as Bean?,confidenceScores: null == confidenceScores ? _self._confidenceScores : confidenceScores // ignore: cast_nullable_to_non_nullable
as Map<String, double>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ExtractionResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeanCopyWith<$Res>? get bean {
    if (_self.bean == null) {
    return null;
  }

  return $BeanCopyWith<$Res>(_self.bean!, (value) {
    return _then(_self.copyWith(bean: value));
  });
}
}

// dart format on
