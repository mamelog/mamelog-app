// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bean_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BeanResponse {

 BeanId get id; String get name;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'updated_at') DateTime get updatedAt; RoasterSummary? get roaster;@JsonKey(name: 'roast_level') RoastLevel? get roastLevel;@JsonKey(name: 'bean_type') BeanType? get beanType;@JsonKey(name: 'roast_date') String? get roastDate;@JsonKey(name: 'purchase_date') String? get purchaseDate;@JsonKey(name: 'purchase_price') int? get purchasePrice;@JsonKey(name: 'weight_g') int? get weightG;@JsonKey(name: 'is_decaf') bool get isDecaf; String? get description; List<BeanOriginResponse> get origins;@JsonKey(name: 'flavor_notes') List<FlavorDescriptorSummary> get flavorNotes;
/// Create a copy of BeanResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BeanResponseCopyWith<BeanResponse> get copyWith => _$BeanResponseCopyWithImpl<BeanResponse>(this as BeanResponse, _$identity);

  /// Serializes this BeanResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BeanResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.roaster, roaster) || other.roaster == roaster)&&(identical(other.roastLevel, roastLevel) || other.roastLevel == roastLevel)&&(identical(other.beanType, beanType) || other.beanType == beanType)&&(identical(other.roastDate, roastDate) || other.roastDate == roastDate)&&(identical(other.purchaseDate, purchaseDate) || other.purchaseDate == purchaseDate)&&(identical(other.purchasePrice, purchasePrice) || other.purchasePrice == purchasePrice)&&(identical(other.weightG, weightG) || other.weightG == weightG)&&(identical(other.isDecaf, isDecaf) || other.isDecaf == isDecaf)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.origins, origins)&&const DeepCollectionEquality().equals(other.flavorNotes, flavorNotes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,createdAt,updatedAt,roaster,roastLevel,beanType,roastDate,purchaseDate,purchasePrice,weightG,isDecaf,description,const DeepCollectionEquality().hash(origins),const DeepCollectionEquality().hash(flavorNotes));

@override
String toString() {
  return 'BeanResponse(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, roaster: $roaster, roastLevel: $roastLevel, beanType: $beanType, roastDate: $roastDate, purchaseDate: $purchaseDate, purchasePrice: $purchasePrice, weightG: $weightG, isDecaf: $isDecaf, description: $description, origins: $origins, flavorNotes: $flavorNotes)';
}


}

/// @nodoc
abstract mixin class $BeanResponseCopyWith<$Res>  {
  factory $BeanResponseCopyWith(BeanResponse value, $Res Function(BeanResponse) _then) = _$BeanResponseCopyWithImpl;
@useResult
$Res call({
 BeanId id, String name,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt, RoasterSummary? roaster,@JsonKey(name: 'roast_level') RoastLevel? roastLevel,@JsonKey(name: 'bean_type') BeanType? beanType,@JsonKey(name: 'roast_date') String? roastDate,@JsonKey(name: 'purchase_date') String? purchaseDate,@JsonKey(name: 'purchase_price') int? purchasePrice,@JsonKey(name: 'weight_g') int? weightG,@JsonKey(name: 'is_decaf') bool isDecaf, String? description, List<BeanOriginResponse> origins,@JsonKey(name: 'flavor_notes') List<FlavorDescriptorSummary> flavorNotes
});


$RoasterSummaryCopyWith<$Res>? get roaster;

}
/// @nodoc
class _$BeanResponseCopyWithImpl<$Res>
    implements $BeanResponseCopyWith<$Res> {
  _$BeanResponseCopyWithImpl(this._self, this._then);

  final BeanResponse _self;
  final $Res Function(BeanResponse) _then;

/// Create a copy of BeanResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? createdAt = null,Object? updatedAt = null,Object? roaster = freezed,Object? roastLevel = freezed,Object? beanType = freezed,Object? roastDate = freezed,Object? purchaseDate = freezed,Object? purchasePrice = freezed,Object? weightG = freezed,Object? isDecaf = null,Object? description = freezed,Object? origins = null,Object? flavorNotes = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as BeanId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,roaster: freezed == roaster ? _self.roaster : roaster // ignore: cast_nullable_to_non_nullable
as RoasterSummary?,roastLevel: freezed == roastLevel ? _self.roastLevel : roastLevel // ignore: cast_nullable_to_non_nullable
as RoastLevel?,beanType: freezed == beanType ? _self.beanType : beanType // ignore: cast_nullable_to_non_nullable
as BeanType?,roastDate: freezed == roastDate ? _self.roastDate : roastDate // ignore: cast_nullable_to_non_nullable
as String?,purchaseDate: freezed == purchaseDate ? _self.purchaseDate : purchaseDate // ignore: cast_nullable_to_non_nullable
as String?,purchasePrice: freezed == purchasePrice ? _self.purchasePrice : purchasePrice // ignore: cast_nullable_to_non_nullable
as int?,weightG: freezed == weightG ? _self.weightG : weightG // ignore: cast_nullable_to_non_nullable
as int?,isDecaf: null == isDecaf ? _self.isDecaf : isDecaf // ignore: cast_nullable_to_non_nullable
as bool,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,origins: null == origins ? _self.origins : origins // ignore: cast_nullable_to_non_nullable
as List<BeanOriginResponse>,flavorNotes: null == flavorNotes ? _self.flavorNotes : flavorNotes // ignore: cast_nullable_to_non_nullable
as List<FlavorDescriptorSummary>,
  ));
}
/// Create a copy of BeanResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoasterSummaryCopyWith<$Res>? get roaster {
    if (_self.roaster == null) {
    return null;
  }

  return $RoasterSummaryCopyWith<$Res>(_self.roaster!, (value) {
    return _then(_self.copyWith(roaster: value));
  });
}
}


/// Adds pattern-matching-related methods to [BeanResponse].
extension BeanResponsePatterns on BeanResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BeanResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BeanResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BeanResponse value)  $default,){
final _that = this;
switch (_that) {
case _BeanResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BeanResponse value)?  $default,){
final _that = this;
switch (_that) {
case _BeanResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BeanId id,  String name, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt,  RoasterSummary? roaster, @JsonKey(name: 'roast_level')  RoastLevel? roastLevel, @JsonKey(name: 'bean_type')  BeanType? beanType, @JsonKey(name: 'roast_date')  String? roastDate, @JsonKey(name: 'purchase_date')  String? purchaseDate, @JsonKey(name: 'purchase_price')  int? purchasePrice, @JsonKey(name: 'weight_g')  int? weightG, @JsonKey(name: 'is_decaf')  bool isDecaf,  String? description,  List<BeanOriginResponse> origins, @JsonKey(name: 'flavor_notes')  List<FlavorDescriptorSummary> flavorNotes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BeanResponse() when $default != null:
return $default(_that.id,_that.name,_that.createdAt,_that.updatedAt,_that.roaster,_that.roastLevel,_that.beanType,_that.roastDate,_that.purchaseDate,_that.purchasePrice,_that.weightG,_that.isDecaf,_that.description,_that.origins,_that.flavorNotes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BeanId id,  String name, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt,  RoasterSummary? roaster, @JsonKey(name: 'roast_level')  RoastLevel? roastLevel, @JsonKey(name: 'bean_type')  BeanType? beanType, @JsonKey(name: 'roast_date')  String? roastDate, @JsonKey(name: 'purchase_date')  String? purchaseDate, @JsonKey(name: 'purchase_price')  int? purchasePrice, @JsonKey(name: 'weight_g')  int? weightG, @JsonKey(name: 'is_decaf')  bool isDecaf,  String? description,  List<BeanOriginResponse> origins, @JsonKey(name: 'flavor_notes')  List<FlavorDescriptorSummary> flavorNotes)  $default,) {final _that = this;
switch (_that) {
case _BeanResponse():
return $default(_that.id,_that.name,_that.createdAt,_that.updatedAt,_that.roaster,_that.roastLevel,_that.beanType,_that.roastDate,_that.purchaseDate,_that.purchasePrice,_that.weightG,_that.isDecaf,_that.description,_that.origins,_that.flavorNotes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BeanId id,  String name, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt,  RoasterSummary? roaster, @JsonKey(name: 'roast_level')  RoastLevel? roastLevel, @JsonKey(name: 'bean_type')  BeanType? beanType, @JsonKey(name: 'roast_date')  String? roastDate, @JsonKey(name: 'purchase_date')  String? purchaseDate, @JsonKey(name: 'purchase_price')  int? purchasePrice, @JsonKey(name: 'weight_g')  int? weightG, @JsonKey(name: 'is_decaf')  bool isDecaf,  String? description,  List<BeanOriginResponse> origins, @JsonKey(name: 'flavor_notes')  List<FlavorDescriptorSummary> flavorNotes)?  $default,) {final _that = this;
switch (_that) {
case _BeanResponse() when $default != null:
return $default(_that.id,_that.name,_that.createdAt,_that.updatedAt,_that.roaster,_that.roastLevel,_that.beanType,_that.roastDate,_that.purchaseDate,_that.purchasePrice,_that.weightG,_that.isDecaf,_that.description,_that.origins,_that.flavorNotes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BeanResponse implements BeanResponse {
  const _BeanResponse({required this.id, required this.name, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt, this.roaster, @JsonKey(name: 'roast_level') this.roastLevel, @JsonKey(name: 'bean_type') this.beanType, @JsonKey(name: 'roast_date') this.roastDate, @JsonKey(name: 'purchase_date') this.purchaseDate, @JsonKey(name: 'purchase_price') this.purchasePrice, @JsonKey(name: 'weight_g') this.weightG, @JsonKey(name: 'is_decaf') this.isDecaf = false, this.description, final  List<BeanOriginResponse> origins = const [], @JsonKey(name: 'flavor_notes') final  List<FlavorDescriptorSummary> flavorNotes = const []}): _origins = origins,_flavorNotes = flavorNotes;
  factory _BeanResponse.fromJson(Map<String, dynamic> json) => _$BeanResponseFromJson(json);

@override final  BeanId id;
@override final  String name;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime updatedAt;
@override final  RoasterSummary? roaster;
@override@JsonKey(name: 'roast_level') final  RoastLevel? roastLevel;
@override@JsonKey(name: 'bean_type') final  BeanType? beanType;
@override@JsonKey(name: 'roast_date') final  String? roastDate;
@override@JsonKey(name: 'purchase_date') final  String? purchaseDate;
@override@JsonKey(name: 'purchase_price') final  int? purchasePrice;
@override@JsonKey(name: 'weight_g') final  int? weightG;
@override@JsonKey(name: 'is_decaf') final  bool isDecaf;
@override final  String? description;
 final  List<BeanOriginResponse> _origins;
@override@JsonKey() List<BeanOriginResponse> get origins {
  if (_origins is EqualUnmodifiableListView) return _origins;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_origins);
}

 final  List<FlavorDescriptorSummary> _flavorNotes;
@override@JsonKey(name: 'flavor_notes') List<FlavorDescriptorSummary> get flavorNotes {
  if (_flavorNotes is EqualUnmodifiableListView) return _flavorNotes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_flavorNotes);
}


/// Create a copy of BeanResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeanResponseCopyWith<_BeanResponse> get copyWith => __$BeanResponseCopyWithImpl<_BeanResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BeanResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeanResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.roaster, roaster) || other.roaster == roaster)&&(identical(other.roastLevel, roastLevel) || other.roastLevel == roastLevel)&&(identical(other.beanType, beanType) || other.beanType == beanType)&&(identical(other.roastDate, roastDate) || other.roastDate == roastDate)&&(identical(other.purchaseDate, purchaseDate) || other.purchaseDate == purchaseDate)&&(identical(other.purchasePrice, purchasePrice) || other.purchasePrice == purchasePrice)&&(identical(other.weightG, weightG) || other.weightG == weightG)&&(identical(other.isDecaf, isDecaf) || other.isDecaf == isDecaf)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._origins, _origins)&&const DeepCollectionEquality().equals(other._flavorNotes, _flavorNotes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,createdAt,updatedAt,roaster,roastLevel,beanType,roastDate,purchaseDate,purchasePrice,weightG,isDecaf,description,const DeepCollectionEquality().hash(_origins),const DeepCollectionEquality().hash(_flavorNotes));

@override
String toString() {
  return 'BeanResponse(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, roaster: $roaster, roastLevel: $roastLevel, beanType: $beanType, roastDate: $roastDate, purchaseDate: $purchaseDate, purchasePrice: $purchasePrice, weightG: $weightG, isDecaf: $isDecaf, description: $description, origins: $origins, flavorNotes: $flavorNotes)';
}


}

/// @nodoc
abstract mixin class _$BeanResponseCopyWith<$Res> implements $BeanResponseCopyWith<$Res> {
  factory _$BeanResponseCopyWith(_BeanResponse value, $Res Function(_BeanResponse) _then) = __$BeanResponseCopyWithImpl;
@override @useResult
$Res call({
 BeanId id, String name,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt, RoasterSummary? roaster,@JsonKey(name: 'roast_level') RoastLevel? roastLevel,@JsonKey(name: 'bean_type') BeanType? beanType,@JsonKey(name: 'roast_date') String? roastDate,@JsonKey(name: 'purchase_date') String? purchaseDate,@JsonKey(name: 'purchase_price') int? purchasePrice,@JsonKey(name: 'weight_g') int? weightG,@JsonKey(name: 'is_decaf') bool isDecaf, String? description, List<BeanOriginResponse> origins,@JsonKey(name: 'flavor_notes') List<FlavorDescriptorSummary> flavorNotes
});


@override $RoasterSummaryCopyWith<$Res>? get roaster;

}
/// @nodoc
class __$BeanResponseCopyWithImpl<$Res>
    implements _$BeanResponseCopyWith<$Res> {
  __$BeanResponseCopyWithImpl(this._self, this._then);

  final _BeanResponse _self;
  final $Res Function(_BeanResponse) _then;

/// Create a copy of BeanResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? createdAt = null,Object? updatedAt = null,Object? roaster = freezed,Object? roastLevel = freezed,Object? beanType = freezed,Object? roastDate = freezed,Object? purchaseDate = freezed,Object? purchasePrice = freezed,Object? weightG = freezed,Object? isDecaf = null,Object? description = freezed,Object? origins = null,Object? flavorNotes = null,}) {
  return _then(_BeanResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as BeanId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,roaster: freezed == roaster ? _self.roaster : roaster // ignore: cast_nullable_to_non_nullable
as RoasterSummary?,roastLevel: freezed == roastLevel ? _self.roastLevel : roastLevel // ignore: cast_nullable_to_non_nullable
as RoastLevel?,beanType: freezed == beanType ? _self.beanType : beanType // ignore: cast_nullable_to_non_nullable
as BeanType?,roastDate: freezed == roastDate ? _self.roastDate : roastDate // ignore: cast_nullable_to_non_nullable
as String?,purchaseDate: freezed == purchaseDate ? _self.purchaseDate : purchaseDate // ignore: cast_nullable_to_non_nullable
as String?,purchasePrice: freezed == purchasePrice ? _self.purchasePrice : purchasePrice // ignore: cast_nullable_to_non_nullable
as int?,weightG: freezed == weightG ? _self.weightG : weightG // ignore: cast_nullable_to_non_nullable
as int?,isDecaf: null == isDecaf ? _self.isDecaf : isDecaf // ignore: cast_nullable_to_non_nullable
as bool,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,origins: null == origins ? _self._origins : origins // ignore: cast_nullable_to_non_nullable
as List<BeanOriginResponse>,flavorNotes: null == flavorNotes ? _self._flavorNotes : flavorNotes // ignore: cast_nullable_to_non_nullable
as List<FlavorDescriptorSummary>,
  ));
}

/// Create a copy of BeanResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoasterSummaryCopyWith<$Res>? get roaster {
    if (_self.roaster == null) {
    return null;
  }

  return $RoasterSummaryCopyWith<$Res>(_self.roaster!, (value) {
    return _then(_self.copyWith(roaster: value));
  });
}
}

// dart format on
