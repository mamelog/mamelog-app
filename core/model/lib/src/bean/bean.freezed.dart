// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bean.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Bean {

 BeanId get id; UserId get userId; String get name; DateTime get createdAt; DateTime get updatedAt; RoasterId? get roasterId; RoastLevel? get roastLevel; BeanType? get beanType; List<BeanOrigin> get origins; List<FlavorDescriptorId> get flavorNoteIds; String? get roastDate; String? get purchaseDate; int? get purchasePrice; int? get weightG; bool get isDecaf; String? get description;
/// Create a copy of Bean
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BeanCopyWith<Bean> get copyWith => _$BeanCopyWithImpl<Bean>(this as Bean, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Bean&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.roasterId, roasterId) || other.roasterId == roasterId)&&(identical(other.roastLevel, roastLevel) || other.roastLevel == roastLevel)&&(identical(other.beanType, beanType) || other.beanType == beanType)&&const DeepCollectionEquality().equals(other.origins, origins)&&const DeepCollectionEquality().equals(other.flavorNoteIds, flavorNoteIds)&&(identical(other.roastDate, roastDate) || other.roastDate == roastDate)&&(identical(other.purchaseDate, purchaseDate) || other.purchaseDate == purchaseDate)&&(identical(other.purchasePrice, purchasePrice) || other.purchasePrice == purchasePrice)&&(identical(other.weightG, weightG) || other.weightG == weightG)&&(identical(other.isDecaf, isDecaf) || other.isDecaf == isDecaf)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,name,createdAt,updatedAt,roasterId,roastLevel,beanType,const DeepCollectionEquality().hash(origins),const DeepCollectionEquality().hash(flavorNoteIds),roastDate,purchaseDate,purchasePrice,weightG,isDecaf,description);

@override
String toString() {
  return 'Bean(id: $id, userId: $userId, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, roasterId: $roasterId, roastLevel: $roastLevel, beanType: $beanType, origins: $origins, flavorNoteIds: $flavorNoteIds, roastDate: $roastDate, purchaseDate: $purchaseDate, purchasePrice: $purchasePrice, weightG: $weightG, isDecaf: $isDecaf, description: $description)';
}


}

/// @nodoc
abstract mixin class $BeanCopyWith<$Res>  {
  factory $BeanCopyWith(Bean value, $Res Function(Bean) _then) = _$BeanCopyWithImpl;
@useResult
$Res call({
 BeanId id, UserId userId, String name, DateTime createdAt, DateTime updatedAt, RoasterId? roasterId, RoastLevel? roastLevel, BeanType? beanType, List<BeanOrigin> origins, List<FlavorDescriptorId> flavorNoteIds, String? roastDate, String? purchaseDate, int? purchasePrice, int? weightG, bool isDecaf, String? description
});




}
/// @nodoc
class _$BeanCopyWithImpl<$Res>
    implements $BeanCopyWith<$Res> {
  _$BeanCopyWithImpl(this._self, this._then);

  final Bean _self;
  final $Res Function(Bean) _then;

/// Create a copy of Bean
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? name = null,Object? createdAt = null,Object? updatedAt = null,Object? roasterId = freezed,Object? roastLevel = freezed,Object? beanType = freezed,Object? origins = null,Object? flavorNoteIds = null,Object? roastDate = freezed,Object? purchaseDate = freezed,Object? purchasePrice = freezed,Object? weightG = freezed,Object? isDecaf = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as BeanId,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as UserId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,roasterId: freezed == roasterId ? _self.roasterId : roasterId // ignore: cast_nullable_to_non_nullable
as RoasterId?,roastLevel: freezed == roastLevel ? _self.roastLevel : roastLevel // ignore: cast_nullable_to_non_nullable
as RoastLevel?,beanType: freezed == beanType ? _self.beanType : beanType // ignore: cast_nullable_to_non_nullable
as BeanType?,origins: null == origins ? _self.origins : origins // ignore: cast_nullable_to_non_nullable
as List<BeanOrigin>,flavorNoteIds: null == flavorNoteIds ? _self.flavorNoteIds : flavorNoteIds // ignore: cast_nullable_to_non_nullable
as List<FlavorDescriptorId>,roastDate: freezed == roastDate ? _self.roastDate : roastDate // ignore: cast_nullable_to_non_nullable
as String?,purchaseDate: freezed == purchaseDate ? _self.purchaseDate : purchaseDate // ignore: cast_nullable_to_non_nullable
as String?,purchasePrice: freezed == purchasePrice ? _self.purchasePrice : purchasePrice // ignore: cast_nullable_to_non_nullable
as int?,weightG: freezed == weightG ? _self.weightG : weightG // ignore: cast_nullable_to_non_nullable
as int?,isDecaf: null == isDecaf ? _self.isDecaf : isDecaf // ignore: cast_nullable_to_non_nullable
as bool,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}



/// @nodoc


class _Bean implements Bean {
  const _Bean({required this.id, required this.userId, required this.name, required this.createdAt, required this.updatedAt, this.roasterId, this.roastLevel, this.beanType, final  List<BeanOrigin> origins = const [], final  List<FlavorDescriptorId> flavorNoteIds = const [], this.roastDate, this.purchaseDate, this.purchasePrice, this.weightG, this.isDecaf = false, this.description}): _origins = origins,_flavorNoteIds = flavorNoteIds;
  

@override final  BeanId id;
@override final  UserId userId;
@override final  String name;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  RoasterId? roasterId;
@override final  RoastLevel? roastLevel;
@override final  BeanType? beanType;
 final  List<BeanOrigin> _origins;
@override@JsonKey() List<BeanOrigin> get origins {
  if (_origins is EqualUnmodifiableListView) return _origins;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_origins);
}

 final  List<FlavorDescriptorId> _flavorNoteIds;
@override@JsonKey() List<FlavorDescriptorId> get flavorNoteIds {
  if (_flavorNoteIds is EqualUnmodifiableListView) return _flavorNoteIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_flavorNoteIds);
}

@override final  String? roastDate;
@override final  String? purchaseDate;
@override final  int? purchasePrice;
@override final  int? weightG;
@override@JsonKey() final  bool isDecaf;
@override final  String? description;

/// Create a copy of Bean
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeanCopyWith<_Bean> get copyWith => __$BeanCopyWithImpl<_Bean>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Bean&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.roasterId, roasterId) || other.roasterId == roasterId)&&(identical(other.roastLevel, roastLevel) || other.roastLevel == roastLevel)&&(identical(other.beanType, beanType) || other.beanType == beanType)&&const DeepCollectionEquality().equals(other._origins, _origins)&&const DeepCollectionEquality().equals(other._flavorNoteIds, _flavorNoteIds)&&(identical(other.roastDate, roastDate) || other.roastDate == roastDate)&&(identical(other.purchaseDate, purchaseDate) || other.purchaseDate == purchaseDate)&&(identical(other.purchasePrice, purchasePrice) || other.purchasePrice == purchasePrice)&&(identical(other.weightG, weightG) || other.weightG == weightG)&&(identical(other.isDecaf, isDecaf) || other.isDecaf == isDecaf)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,name,createdAt,updatedAt,roasterId,roastLevel,beanType,const DeepCollectionEquality().hash(_origins),const DeepCollectionEquality().hash(_flavorNoteIds),roastDate,purchaseDate,purchasePrice,weightG,isDecaf,description);

@override
String toString() {
  return 'Bean(id: $id, userId: $userId, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, roasterId: $roasterId, roastLevel: $roastLevel, beanType: $beanType, origins: $origins, flavorNoteIds: $flavorNoteIds, roastDate: $roastDate, purchaseDate: $purchaseDate, purchasePrice: $purchasePrice, weightG: $weightG, isDecaf: $isDecaf, description: $description)';
}


}

/// @nodoc
abstract mixin class _$BeanCopyWith<$Res> implements $BeanCopyWith<$Res> {
  factory _$BeanCopyWith(_Bean value, $Res Function(_Bean) _then) = __$BeanCopyWithImpl;
@override @useResult
$Res call({
 BeanId id, UserId userId, String name, DateTime createdAt, DateTime updatedAt, RoasterId? roasterId, RoastLevel? roastLevel, BeanType? beanType, List<BeanOrigin> origins, List<FlavorDescriptorId> flavorNoteIds, String? roastDate, String? purchaseDate, int? purchasePrice, int? weightG, bool isDecaf, String? description
});




}
/// @nodoc
class __$BeanCopyWithImpl<$Res>
    implements _$BeanCopyWith<$Res> {
  __$BeanCopyWithImpl(this._self, this._then);

  final _Bean _self;
  final $Res Function(_Bean) _then;

/// Create a copy of Bean
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? name = null,Object? createdAt = null,Object? updatedAt = null,Object? roasterId = freezed,Object? roastLevel = freezed,Object? beanType = freezed,Object? origins = null,Object? flavorNoteIds = null,Object? roastDate = freezed,Object? purchaseDate = freezed,Object? purchasePrice = freezed,Object? weightG = freezed,Object? isDecaf = null,Object? description = freezed,}) {
  return _then(_Bean(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as BeanId,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as UserId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,roasterId: freezed == roasterId ? _self.roasterId : roasterId // ignore: cast_nullable_to_non_nullable
as RoasterId?,roastLevel: freezed == roastLevel ? _self.roastLevel : roastLevel // ignore: cast_nullable_to_non_nullable
as RoastLevel?,beanType: freezed == beanType ? _self.beanType : beanType // ignore: cast_nullable_to_non_nullable
as BeanType?,origins: null == origins ? _self._origins : origins // ignore: cast_nullable_to_non_nullable
as List<BeanOrigin>,flavorNoteIds: null == flavorNoteIds ? _self._flavorNoteIds : flavorNoteIds // ignore: cast_nullable_to_non_nullable
as List<FlavorDescriptorId>,roastDate: freezed == roastDate ? _self.roastDate : roastDate // ignore: cast_nullable_to_non_nullable
as String?,purchaseDate: freezed == purchaseDate ? _self.purchaseDate : purchaseDate // ignore: cast_nullable_to_non_nullable
as String?,purchasePrice: freezed == purchasePrice ? _self.purchasePrice : purchasePrice // ignore: cast_nullable_to_non_nullable
as int?,weightG: freezed == weightG ? _self.weightG : weightG // ignore: cast_nullable_to_non_nullable
as int?,isDecaf: null == isDecaf ? _self.isDecaf : isDecaf // ignore: cast_nullable_to_non_nullable
as bool,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
