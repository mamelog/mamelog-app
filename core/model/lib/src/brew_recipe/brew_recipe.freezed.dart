// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brew_recipe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BrewRecipe {

 BrewRecipeId get id; BeanId get beanId; String get brewMethod; DateTime get createdAt; DateTime get updatedAt; String? get grindSetting; double? get waterTemperature; double? get coffeeWeight; double? get waterWeight; Duration? get totalTime; String? get notes;
/// Create a copy of BrewRecipe
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrewRecipeCopyWith<BrewRecipe> get copyWith => _$BrewRecipeCopyWithImpl<BrewRecipe>(this as BrewRecipe, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrewRecipe&&(identical(other.id, id) || other.id == id)&&(identical(other.beanId, beanId) || other.beanId == beanId)&&(identical(other.brewMethod, brewMethod) || other.brewMethod == brewMethod)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.grindSetting, grindSetting) || other.grindSetting == grindSetting)&&(identical(other.waterTemperature, waterTemperature) || other.waterTemperature == waterTemperature)&&(identical(other.coffeeWeight, coffeeWeight) || other.coffeeWeight == coffeeWeight)&&(identical(other.waterWeight, waterWeight) || other.waterWeight == waterWeight)&&(identical(other.totalTime, totalTime) || other.totalTime == totalTime)&&(identical(other.notes, notes) || other.notes == notes));
}


@override
int get hashCode => Object.hash(runtimeType,id,beanId,brewMethod,createdAt,updatedAt,grindSetting,waterTemperature,coffeeWeight,waterWeight,totalTime,notes);

@override
String toString() {
  return 'BrewRecipe(id: $id, beanId: $beanId, brewMethod: $brewMethod, createdAt: $createdAt, updatedAt: $updatedAt, grindSetting: $grindSetting, waterTemperature: $waterTemperature, coffeeWeight: $coffeeWeight, waterWeight: $waterWeight, totalTime: $totalTime, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $BrewRecipeCopyWith<$Res>  {
  factory $BrewRecipeCopyWith(BrewRecipe value, $Res Function(BrewRecipe) _then) = _$BrewRecipeCopyWithImpl;
@useResult
$Res call({
 BrewRecipeId id, BeanId beanId, String brewMethod, DateTime createdAt, DateTime updatedAt, String? grindSetting, double? waterTemperature, double? coffeeWeight, double? waterWeight, Duration? totalTime, String? notes
});




}
/// @nodoc
class _$BrewRecipeCopyWithImpl<$Res>
    implements $BrewRecipeCopyWith<$Res> {
  _$BrewRecipeCopyWithImpl(this._self, this._then);

  final BrewRecipe _self;
  final $Res Function(BrewRecipe) _then;

/// Create a copy of BrewRecipe
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? beanId = null,Object? brewMethod = null,Object? createdAt = null,Object? updatedAt = null,Object? grindSetting = freezed,Object? waterTemperature = freezed,Object? coffeeWeight = freezed,Object? waterWeight = freezed,Object? totalTime = freezed,Object? notes = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as BrewRecipeId,beanId: null == beanId ? _self.beanId : beanId // ignore: cast_nullable_to_non_nullable
as BeanId,brewMethod: null == brewMethod ? _self.brewMethod : brewMethod // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,grindSetting: freezed == grindSetting ? _self.grindSetting : grindSetting // ignore: cast_nullable_to_non_nullable
as String?,waterTemperature: freezed == waterTemperature ? _self.waterTemperature : waterTemperature // ignore: cast_nullable_to_non_nullable
as double?,coffeeWeight: freezed == coffeeWeight ? _self.coffeeWeight : coffeeWeight // ignore: cast_nullable_to_non_nullable
as double?,waterWeight: freezed == waterWeight ? _self.waterWeight : waterWeight // ignore: cast_nullable_to_non_nullable
as double?,totalTime: freezed == totalTime ? _self.totalTime : totalTime // ignore: cast_nullable_to_non_nullable
as Duration?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}



/// @nodoc


class _BrewRecipe implements BrewRecipe {
  const _BrewRecipe({required this.id, required this.beanId, required this.brewMethod, required this.createdAt, required this.updatedAt, this.grindSetting, this.waterTemperature, this.coffeeWeight, this.waterWeight, this.totalTime, this.notes});
  

@override final  BrewRecipeId id;
@override final  BeanId beanId;
@override final  String brewMethod;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String? grindSetting;
@override final  double? waterTemperature;
@override final  double? coffeeWeight;
@override final  double? waterWeight;
@override final  Duration? totalTime;
@override final  String? notes;

/// Create a copy of BrewRecipe
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrewRecipeCopyWith<_BrewRecipe> get copyWith => __$BrewRecipeCopyWithImpl<_BrewRecipe>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BrewRecipe&&(identical(other.id, id) || other.id == id)&&(identical(other.beanId, beanId) || other.beanId == beanId)&&(identical(other.brewMethod, brewMethod) || other.brewMethod == brewMethod)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.grindSetting, grindSetting) || other.grindSetting == grindSetting)&&(identical(other.waterTemperature, waterTemperature) || other.waterTemperature == waterTemperature)&&(identical(other.coffeeWeight, coffeeWeight) || other.coffeeWeight == coffeeWeight)&&(identical(other.waterWeight, waterWeight) || other.waterWeight == waterWeight)&&(identical(other.totalTime, totalTime) || other.totalTime == totalTime)&&(identical(other.notes, notes) || other.notes == notes));
}


@override
int get hashCode => Object.hash(runtimeType,id,beanId,brewMethod,createdAt,updatedAt,grindSetting,waterTemperature,coffeeWeight,waterWeight,totalTime,notes);

@override
String toString() {
  return 'BrewRecipe(id: $id, beanId: $beanId, brewMethod: $brewMethod, createdAt: $createdAt, updatedAt: $updatedAt, grindSetting: $grindSetting, waterTemperature: $waterTemperature, coffeeWeight: $coffeeWeight, waterWeight: $waterWeight, totalTime: $totalTime, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$BrewRecipeCopyWith<$Res> implements $BrewRecipeCopyWith<$Res> {
  factory _$BrewRecipeCopyWith(_BrewRecipe value, $Res Function(_BrewRecipe) _then) = __$BrewRecipeCopyWithImpl;
@override @useResult
$Res call({
 BrewRecipeId id, BeanId beanId, String brewMethod, DateTime createdAt, DateTime updatedAt, String? grindSetting, double? waterTemperature, double? coffeeWeight, double? waterWeight, Duration? totalTime, String? notes
});




}
/// @nodoc
class __$BrewRecipeCopyWithImpl<$Res>
    implements _$BrewRecipeCopyWith<$Res> {
  __$BrewRecipeCopyWithImpl(this._self, this._then);

  final _BrewRecipe _self;
  final $Res Function(_BrewRecipe) _then;

/// Create a copy of BrewRecipe
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? beanId = null,Object? brewMethod = null,Object? createdAt = null,Object? updatedAt = null,Object? grindSetting = freezed,Object? waterTemperature = freezed,Object? coffeeWeight = freezed,Object? waterWeight = freezed,Object? totalTime = freezed,Object? notes = freezed,}) {
  return _then(_BrewRecipe(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as BrewRecipeId,beanId: null == beanId ? _self.beanId : beanId // ignore: cast_nullable_to_non_nullable
as BeanId,brewMethod: null == brewMethod ? _self.brewMethod : brewMethod // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,grindSetting: freezed == grindSetting ? _self.grindSetting : grindSetting // ignore: cast_nullable_to_non_nullable
as String?,waterTemperature: freezed == waterTemperature ? _self.waterTemperature : waterTemperature // ignore: cast_nullable_to_non_nullable
as double?,coffeeWeight: freezed == coffeeWeight ? _self.coffeeWeight : coffeeWeight // ignore: cast_nullable_to_non_nullable
as double?,waterWeight: freezed == waterWeight ? _self.waterWeight : waterWeight // ignore: cast_nullable_to_non_nullable
as double?,totalTime: freezed == totalTime ? _self.totalTime : totalTime // ignore: cast_nullable_to_non_nullable
as Duration?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
