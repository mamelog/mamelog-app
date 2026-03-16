// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Country {

 CountryId get id; String get name; String get nameEn; String get isoAlpha2; String? get region; int get sortOrder;
/// Create a copy of Country
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryCopyWith<Country> get copyWith => _$CountryCopyWithImpl<Country>(this as Country, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Country&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.isoAlpha2, isoAlpha2) || other.isoAlpha2 == isoAlpha2)&&(identical(other.region, region) || other.region == region)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,nameEn,isoAlpha2,region,sortOrder);

@override
String toString() {
  return 'Country(id: $id, name: $name, nameEn: $nameEn, isoAlpha2: $isoAlpha2, region: $region, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class $CountryCopyWith<$Res>  {
  factory $CountryCopyWith(Country value, $Res Function(Country) _then) = _$CountryCopyWithImpl;
@useResult
$Res call({
 CountryId id, String name, String nameEn, String isoAlpha2, String? region, int sortOrder
});




}
/// @nodoc
class _$CountryCopyWithImpl<$Res>
    implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._self, this._then);

  final Country _self;
  final $Res Function(Country) _then;

/// Create a copy of Country
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? nameEn = null,Object? isoAlpha2 = null,Object? region = freezed,Object? sortOrder = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as CountryId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameEn: null == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String,isoAlpha2: null == isoAlpha2 ? _self.isoAlpha2 : isoAlpha2 // ignore: cast_nullable_to_non_nullable
as String,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}



/// @nodoc


class _Country implements Country {
  const _Country({required this.id, required this.name, required this.nameEn, required this.isoAlpha2, this.region, this.sortOrder = 0});
  

@override final  CountryId id;
@override final  String name;
@override final  String nameEn;
@override final  String isoAlpha2;
@override final  String? region;
@override@JsonKey() final  int sortOrder;

/// Create a copy of Country
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountryCopyWith<_Country> get copyWith => __$CountryCopyWithImpl<_Country>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Country&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.isoAlpha2, isoAlpha2) || other.isoAlpha2 == isoAlpha2)&&(identical(other.region, region) || other.region == region)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,nameEn,isoAlpha2,region,sortOrder);

@override
String toString() {
  return 'Country(id: $id, name: $name, nameEn: $nameEn, isoAlpha2: $isoAlpha2, region: $region, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class _$CountryCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$CountryCopyWith(_Country value, $Res Function(_Country) _then) = __$CountryCopyWithImpl;
@override @useResult
$Res call({
 CountryId id, String name, String nameEn, String isoAlpha2, String? region, int sortOrder
});




}
/// @nodoc
class __$CountryCopyWithImpl<$Res>
    implements _$CountryCopyWith<$Res> {
  __$CountryCopyWithImpl(this._self, this._then);

  final _Country _self;
  final $Res Function(_Country) _then;

/// Create a copy of Country
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? nameEn = null,Object? isoAlpha2 = null,Object? region = freezed,Object? sortOrder = null,}) {
  return _then(_Country(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as CountryId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameEn: null == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String,isoAlpha2: null == isoAlpha2 ? _self.isoAlpha2 : isoAlpha2 // ignore: cast_nullable_to_non_nullable
as String,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$Variety {

 VarietyId get id; String get name; String? get nameJa; String get species; String? get description; int get sortOrder;
/// Create a copy of Variety
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VarietyCopyWith<Variety> get copyWith => _$VarietyCopyWithImpl<Variety>(this as Variety, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Variety&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameJa, nameJa) || other.nameJa == nameJa)&&(identical(other.species, species) || other.species == species)&&(identical(other.description, description) || other.description == description)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,nameJa,species,description,sortOrder);

@override
String toString() {
  return 'Variety(id: $id, name: $name, nameJa: $nameJa, species: $species, description: $description, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class $VarietyCopyWith<$Res>  {
  factory $VarietyCopyWith(Variety value, $Res Function(Variety) _then) = _$VarietyCopyWithImpl;
@useResult
$Res call({
 VarietyId id, String name, String? nameJa, String species, String? description, int sortOrder
});




}
/// @nodoc
class _$VarietyCopyWithImpl<$Res>
    implements $VarietyCopyWith<$Res> {
  _$VarietyCopyWithImpl(this._self, this._then);

  final Variety _self;
  final $Res Function(Variety) _then;

/// Create a copy of Variety
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? nameJa = freezed,Object? species = null,Object? description = freezed,Object? sortOrder = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as VarietyId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameJa: freezed == nameJa ? _self.nameJa : nameJa // ignore: cast_nullable_to_non_nullable
as String?,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}



/// @nodoc


class _Variety implements Variety {
  const _Variety({required this.id, required this.name, this.nameJa, this.species = 'arabica', this.description, this.sortOrder = 0});
  

@override final  VarietyId id;
@override final  String name;
@override final  String? nameJa;
@override@JsonKey() final  String species;
@override final  String? description;
@override@JsonKey() final  int sortOrder;

/// Create a copy of Variety
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VarietyCopyWith<_Variety> get copyWith => __$VarietyCopyWithImpl<_Variety>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Variety&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameJa, nameJa) || other.nameJa == nameJa)&&(identical(other.species, species) || other.species == species)&&(identical(other.description, description) || other.description == description)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,nameJa,species,description,sortOrder);

@override
String toString() {
  return 'Variety(id: $id, name: $name, nameJa: $nameJa, species: $species, description: $description, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class _$VarietyCopyWith<$Res> implements $VarietyCopyWith<$Res> {
  factory _$VarietyCopyWith(_Variety value, $Res Function(_Variety) _then) = __$VarietyCopyWithImpl;
@override @useResult
$Res call({
 VarietyId id, String name, String? nameJa, String species, String? description, int sortOrder
});




}
/// @nodoc
class __$VarietyCopyWithImpl<$Res>
    implements _$VarietyCopyWith<$Res> {
  __$VarietyCopyWithImpl(this._self, this._then);

  final _Variety _self;
  final $Res Function(_Variety) _then;

/// Create a copy of Variety
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? nameJa = freezed,Object? species = null,Object? description = freezed,Object? sortOrder = null,}) {
  return _then(_Variety(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as VarietyId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameJa: freezed == nameJa ? _self.nameJa : nameJa // ignore: cast_nullable_to_non_nullable
as String?,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$ProcessingMethod {

 ProcessingMethodId get id; String get name; String? get nameJa; List<String> get aliases; String? get description; int get sortOrder;
/// Create a copy of ProcessingMethod
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProcessingMethodCopyWith<ProcessingMethod> get copyWith => _$ProcessingMethodCopyWithImpl<ProcessingMethod>(this as ProcessingMethod, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProcessingMethod&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameJa, nameJa) || other.nameJa == nameJa)&&const DeepCollectionEquality().equals(other.aliases, aliases)&&(identical(other.description, description) || other.description == description)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,nameJa,const DeepCollectionEquality().hash(aliases),description,sortOrder);

@override
String toString() {
  return 'ProcessingMethod(id: $id, name: $name, nameJa: $nameJa, aliases: $aliases, description: $description, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class $ProcessingMethodCopyWith<$Res>  {
  factory $ProcessingMethodCopyWith(ProcessingMethod value, $Res Function(ProcessingMethod) _then) = _$ProcessingMethodCopyWithImpl;
@useResult
$Res call({
 ProcessingMethodId id, String name, String? nameJa, List<String> aliases, String? description, int sortOrder
});




}
/// @nodoc
class _$ProcessingMethodCopyWithImpl<$Res>
    implements $ProcessingMethodCopyWith<$Res> {
  _$ProcessingMethodCopyWithImpl(this._self, this._then);

  final ProcessingMethod _self;
  final $Res Function(ProcessingMethod) _then;

/// Create a copy of ProcessingMethod
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? nameJa = freezed,Object? aliases = null,Object? description = freezed,Object? sortOrder = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as ProcessingMethodId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameJa: freezed == nameJa ? _self.nameJa : nameJa // ignore: cast_nullable_to_non_nullable
as String?,aliases: null == aliases ? _self.aliases : aliases // ignore: cast_nullable_to_non_nullable
as List<String>,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}



/// @nodoc


class _ProcessingMethod implements ProcessingMethod {
  const _ProcessingMethod({required this.id, required this.name, this.nameJa, final  List<String> aliases = const [], this.description, this.sortOrder = 0}): _aliases = aliases;
  

@override final  ProcessingMethodId id;
@override final  String name;
@override final  String? nameJa;
 final  List<String> _aliases;
@override@JsonKey() List<String> get aliases {
  if (_aliases is EqualUnmodifiableListView) return _aliases;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_aliases);
}

@override final  String? description;
@override@JsonKey() final  int sortOrder;

/// Create a copy of ProcessingMethod
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProcessingMethodCopyWith<_ProcessingMethod> get copyWith => __$ProcessingMethodCopyWithImpl<_ProcessingMethod>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProcessingMethod&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameJa, nameJa) || other.nameJa == nameJa)&&const DeepCollectionEquality().equals(other._aliases, _aliases)&&(identical(other.description, description) || other.description == description)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,nameJa,const DeepCollectionEquality().hash(_aliases),description,sortOrder);

@override
String toString() {
  return 'ProcessingMethod(id: $id, name: $name, nameJa: $nameJa, aliases: $aliases, description: $description, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class _$ProcessingMethodCopyWith<$Res> implements $ProcessingMethodCopyWith<$Res> {
  factory _$ProcessingMethodCopyWith(_ProcessingMethod value, $Res Function(_ProcessingMethod) _then) = __$ProcessingMethodCopyWithImpl;
@override @useResult
$Res call({
 ProcessingMethodId id, String name, String? nameJa, List<String> aliases, String? description, int sortOrder
});




}
/// @nodoc
class __$ProcessingMethodCopyWithImpl<$Res>
    implements _$ProcessingMethodCopyWith<$Res> {
  __$ProcessingMethodCopyWithImpl(this._self, this._then);

  final _ProcessingMethod _self;
  final $Res Function(_ProcessingMethod) _then;

/// Create a copy of ProcessingMethod
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? nameJa = freezed,Object? aliases = null,Object? description = freezed,Object? sortOrder = null,}) {
  return _then(_ProcessingMethod(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as ProcessingMethodId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameJa: freezed == nameJa ? _self.nameJa : nameJa // ignore: cast_nullable_to_non_nullable
as String?,aliases: null == aliases ? _self._aliases : aliases // ignore: cast_nullable_to_non_nullable
as List<String>,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$FlavorDescriptor {

 FlavorDescriptorId get id; String get name; int get tier; String? get nameJa; FlavorDescriptorId? get parentId; String? get scaReference; int get sortOrder;
/// Create a copy of FlavorDescriptor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FlavorDescriptorCopyWith<FlavorDescriptor> get copyWith => _$FlavorDescriptorCopyWithImpl<FlavorDescriptor>(this as FlavorDescriptor, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FlavorDescriptor&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.tier, tier) || other.tier == tier)&&(identical(other.nameJa, nameJa) || other.nameJa == nameJa)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.scaReference, scaReference) || other.scaReference == scaReference)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,tier,nameJa,parentId,scaReference,sortOrder);

@override
String toString() {
  return 'FlavorDescriptor(id: $id, name: $name, tier: $tier, nameJa: $nameJa, parentId: $parentId, scaReference: $scaReference, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class $FlavorDescriptorCopyWith<$Res>  {
  factory $FlavorDescriptorCopyWith(FlavorDescriptor value, $Res Function(FlavorDescriptor) _then) = _$FlavorDescriptorCopyWithImpl;
@useResult
$Res call({
 FlavorDescriptorId id, String name, int tier, String? nameJa, FlavorDescriptorId? parentId, String? scaReference, int sortOrder
});




}
/// @nodoc
class _$FlavorDescriptorCopyWithImpl<$Res>
    implements $FlavorDescriptorCopyWith<$Res> {
  _$FlavorDescriptorCopyWithImpl(this._self, this._then);

  final FlavorDescriptor _self;
  final $Res Function(FlavorDescriptor) _then;

/// Create a copy of FlavorDescriptor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? tier = null,Object? nameJa = freezed,Object? parentId = freezed,Object? scaReference = freezed,Object? sortOrder = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as FlavorDescriptorId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,tier: null == tier ? _self.tier : tier // ignore: cast_nullable_to_non_nullable
as int,nameJa: freezed == nameJa ? _self.nameJa : nameJa // ignore: cast_nullable_to_non_nullable
as String?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as FlavorDescriptorId?,scaReference: freezed == scaReference ? _self.scaReference : scaReference // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}



/// @nodoc


class _FlavorDescriptor implements FlavorDescriptor {
  const _FlavorDescriptor({required this.id, required this.name, required this.tier, this.nameJa, this.parentId, this.scaReference, this.sortOrder = 0});
  

@override final  FlavorDescriptorId id;
@override final  String name;
@override final  int tier;
@override final  String? nameJa;
@override final  FlavorDescriptorId? parentId;
@override final  String? scaReference;
@override@JsonKey() final  int sortOrder;

/// Create a copy of FlavorDescriptor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlavorDescriptorCopyWith<_FlavorDescriptor> get copyWith => __$FlavorDescriptorCopyWithImpl<_FlavorDescriptor>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FlavorDescriptor&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.tier, tier) || other.tier == tier)&&(identical(other.nameJa, nameJa) || other.nameJa == nameJa)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.scaReference, scaReference) || other.scaReference == scaReference)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,tier,nameJa,parentId,scaReference,sortOrder);

@override
String toString() {
  return 'FlavorDescriptor(id: $id, name: $name, tier: $tier, nameJa: $nameJa, parentId: $parentId, scaReference: $scaReference, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class _$FlavorDescriptorCopyWith<$Res> implements $FlavorDescriptorCopyWith<$Res> {
  factory _$FlavorDescriptorCopyWith(_FlavorDescriptor value, $Res Function(_FlavorDescriptor) _then) = __$FlavorDescriptorCopyWithImpl;
@override @useResult
$Res call({
 FlavorDescriptorId id, String name, int tier, String? nameJa, FlavorDescriptorId? parentId, String? scaReference, int sortOrder
});




}
/// @nodoc
class __$FlavorDescriptorCopyWithImpl<$Res>
    implements _$FlavorDescriptorCopyWith<$Res> {
  __$FlavorDescriptorCopyWithImpl(this._self, this._then);

  final _FlavorDescriptor _self;
  final $Res Function(_FlavorDescriptor) _then;

/// Create a copy of FlavorDescriptor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? tier = null,Object? nameJa = freezed,Object? parentId = freezed,Object? scaReference = freezed,Object? sortOrder = null,}) {
  return _then(_FlavorDescriptor(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as FlavorDescriptorId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,tier: null == tier ? _self.tier : tier // ignore: cast_nullable_to_non_nullable
as int,nameJa: freezed == nameJa ? _self.nameJa : nameJa // ignore: cast_nullable_to_non_nullable
as String?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as FlavorDescriptorId?,scaReference: freezed == scaReference ? _self.scaReference : scaReference // ignore: cast_nullable_to_non_nullable
as String?,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
