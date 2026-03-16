// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasting_note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TastingNote {

 TastingNoteId get id; BeanId get beanId; double get totalScore; DateTime get createdAt; DateTime get updatedAt; BrewRecipeId? get brewRecipeId; RoastLevel? get roastLevel; double? get fragranceAroma; double? get flavor; double? get aftertaste; double? get acidity; double? get body; double? get balance; double? get uniformity; double? get cleanCup; double? get sweetness; double? get overall; double get defects; String? get notes;
/// Create a copy of TastingNote
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TastingNoteCopyWith<TastingNote> get copyWith => _$TastingNoteCopyWithImpl<TastingNote>(this as TastingNote, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TastingNote&&(identical(other.id, id) || other.id == id)&&(identical(other.beanId, beanId) || other.beanId == beanId)&&(identical(other.totalScore, totalScore) || other.totalScore == totalScore)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.brewRecipeId, brewRecipeId) || other.brewRecipeId == brewRecipeId)&&(identical(other.roastLevel, roastLevel) || other.roastLevel == roastLevel)&&(identical(other.fragranceAroma, fragranceAroma) || other.fragranceAroma == fragranceAroma)&&(identical(other.flavor, flavor) || other.flavor == flavor)&&(identical(other.aftertaste, aftertaste) || other.aftertaste == aftertaste)&&(identical(other.acidity, acidity) || other.acidity == acidity)&&(identical(other.body, body) || other.body == body)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.uniformity, uniformity) || other.uniformity == uniformity)&&(identical(other.cleanCup, cleanCup) || other.cleanCup == cleanCup)&&(identical(other.sweetness, sweetness) || other.sweetness == sweetness)&&(identical(other.overall, overall) || other.overall == overall)&&(identical(other.defects, defects) || other.defects == defects)&&(identical(other.notes, notes) || other.notes == notes));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,beanId,totalScore,createdAt,updatedAt,brewRecipeId,roastLevel,fragranceAroma,flavor,aftertaste,acidity,body,balance,uniformity,cleanCup,sweetness,overall,defects,notes]);

@override
String toString() {
  return 'TastingNote(id: $id, beanId: $beanId, totalScore: $totalScore, createdAt: $createdAt, updatedAt: $updatedAt, brewRecipeId: $brewRecipeId, roastLevel: $roastLevel, fragranceAroma: $fragranceAroma, flavor: $flavor, aftertaste: $aftertaste, acidity: $acidity, body: $body, balance: $balance, uniformity: $uniformity, cleanCup: $cleanCup, sweetness: $sweetness, overall: $overall, defects: $defects, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $TastingNoteCopyWith<$Res>  {
  factory $TastingNoteCopyWith(TastingNote value, $Res Function(TastingNote) _then) = _$TastingNoteCopyWithImpl;
@useResult
$Res call({
 TastingNoteId id, BeanId beanId, double totalScore, DateTime createdAt, DateTime updatedAt, BrewRecipeId? brewRecipeId, RoastLevel? roastLevel, double? fragranceAroma, double? flavor, double? aftertaste, double? acidity, double? body, double? balance, double? uniformity, double? cleanCup, double? sweetness, double? overall, double defects, String? notes
});




}
/// @nodoc
class _$TastingNoteCopyWithImpl<$Res>
    implements $TastingNoteCopyWith<$Res> {
  _$TastingNoteCopyWithImpl(this._self, this._then);

  final TastingNote _self;
  final $Res Function(TastingNote) _then;

/// Create a copy of TastingNote
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? beanId = null,Object? totalScore = null,Object? createdAt = null,Object? updatedAt = null,Object? brewRecipeId = freezed,Object? roastLevel = freezed,Object? fragranceAroma = freezed,Object? flavor = freezed,Object? aftertaste = freezed,Object? acidity = freezed,Object? body = freezed,Object? balance = freezed,Object? uniformity = freezed,Object? cleanCup = freezed,Object? sweetness = freezed,Object? overall = freezed,Object? defects = null,Object? notes = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as TastingNoteId,beanId: null == beanId ? _self.beanId : beanId // ignore: cast_nullable_to_non_nullable
as BeanId,totalScore: null == totalScore ? _self.totalScore : totalScore // ignore: cast_nullable_to_non_nullable
as double,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,brewRecipeId: freezed == brewRecipeId ? _self.brewRecipeId : brewRecipeId // ignore: cast_nullable_to_non_nullable
as BrewRecipeId?,roastLevel: freezed == roastLevel ? _self.roastLevel : roastLevel // ignore: cast_nullable_to_non_nullable
as RoastLevel?,fragranceAroma: freezed == fragranceAroma ? _self.fragranceAroma : fragranceAroma // ignore: cast_nullable_to_non_nullable
as double?,flavor: freezed == flavor ? _self.flavor : flavor // ignore: cast_nullable_to_non_nullable
as double?,aftertaste: freezed == aftertaste ? _self.aftertaste : aftertaste // ignore: cast_nullable_to_non_nullable
as double?,acidity: freezed == acidity ? _self.acidity : acidity // ignore: cast_nullable_to_non_nullable
as double?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as double?,balance: freezed == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double?,uniformity: freezed == uniformity ? _self.uniformity : uniformity // ignore: cast_nullable_to_non_nullable
as double?,cleanCup: freezed == cleanCup ? _self.cleanCup : cleanCup // ignore: cast_nullable_to_non_nullable
as double?,sweetness: freezed == sweetness ? _self.sweetness : sweetness // ignore: cast_nullable_to_non_nullable
as double?,overall: freezed == overall ? _self.overall : overall // ignore: cast_nullable_to_non_nullable
as double?,defects: null == defects ? _self.defects : defects // ignore: cast_nullable_to_non_nullable
as double,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}



/// @nodoc


class _TastingNote implements TastingNote {
  const _TastingNote({required this.id, required this.beanId, required this.totalScore, required this.createdAt, required this.updatedAt, this.brewRecipeId, this.roastLevel, this.fragranceAroma, this.flavor, this.aftertaste, this.acidity, this.body, this.balance, this.uniformity, this.cleanCup, this.sweetness, this.overall, this.defects = 0, this.notes});
  

@override final  TastingNoteId id;
@override final  BeanId beanId;
@override final  double totalScore;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  BrewRecipeId? brewRecipeId;
@override final  RoastLevel? roastLevel;
@override final  double? fragranceAroma;
@override final  double? flavor;
@override final  double? aftertaste;
@override final  double? acidity;
@override final  double? body;
@override final  double? balance;
@override final  double? uniformity;
@override final  double? cleanCup;
@override final  double? sweetness;
@override final  double? overall;
@override@JsonKey() final  double defects;
@override final  String? notes;

/// Create a copy of TastingNote
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TastingNoteCopyWith<_TastingNote> get copyWith => __$TastingNoteCopyWithImpl<_TastingNote>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TastingNote&&(identical(other.id, id) || other.id == id)&&(identical(other.beanId, beanId) || other.beanId == beanId)&&(identical(other.totalScore, totalScore) || other.totalScore == totalScore)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.brewRecipeId, brewRecipeId) || other.brewRecipeId == brewRecipeId)&&(identical(other.roastLevel, roastLevel) || other.roastLevel == roastLevel)&&(identical(other.fragranceAroma, fragranceAroma) || other.fragranceAroma == fragranceAroma)&&(identical(other.flavor, flavor) || other.flavor == flavor)&&(identical(other.aftertaste, aftertaste) || other.aftertaste == aftertaste)&&(identical(other.acidity, acidity) || other.acidity == acidity)&&(identical(other.body, body) || other.body == body)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.uniformity, uniformity) || other.uniformity == uniformity)&&(identical(other.cleanCup, cleanCup) || other.cleanCup == cleanCup)&&(identical(other.sweetness, sweetness) || other.sweetness == sweetness)&&(identical(other.overall, overall) || other.overall == overall)&&(identical(other.defects, defects) || other.defects == defects)&&(identical(other.notes, notes) || other.notes == notes));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,beanId,totalScore,createdAt,updatedAt,brewRecipeId,roastLevel,fragranceAroma,flavor,aftertaste,acidity,body,balance,uniformity,cleanCup,sweetness,overall,defects,notes]);

@override
String toString() {
  return 'TastingNote(id: $id, beanId: $beanId, totalScore: $totalScore, createdAt: $createdAt, updatedAt: $updatedAt, brewRecipeId: $brewRecipeId, roastLevel: $roastLevel, fragranceAroma: $fragranceAroma, flavor: $flavor, aftertaste: $aftertaste, acidity: $acidity, body: $body, balance: $balance, uniformity: $uniformity, cleanCup: $cleanCup, sweetness: $sweetness, overall: $overall, defects: $defects, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$TastingNoteCopyWith<$Res> implements $TastingNoteCopyWith<$Res> {
  factory _$TastingNoteCopyWith(_TastingNote value, $Res Function(_TastingNote) _then) = __$TastingNoteCopyWithImpl;
@override @useResult
$Res call({
 TastingNoteId id, BeanId beanId, double totalScore, DateTime createdAt, DateTime updatedAt, BrewRecipeId? brewRecipeId, RoastLevel? roastLevel, double? fragranceAroma, double? flavor, double? aftertaste, double? acidity, double? body, double? balance, double? uniformity, double? cleanCup, double? sweetness, double? overall, double defects, String? notes
});




}
/// @nodoc
class __$TastingNoteCopyWithImpl<$Res>
    implements _$TastingNoteCopyWith<$Res> {
  __$TastingNoteCopyWithImpl(this._self, this._then);

  final _TastingNote _self;
  final $Res Function(_TastingNote) _then;

/// Create a copy of TastingNote
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? beanId = null,Object? totalScore = null,Object? createdAt = null,Object? updatedAt = null,Object? brewRecipeId = freezed,Object? roastLevel = freezed,Object? fragranceAroma = freezed,Object? flavor = freezed,Object? aftertaste = freezed,Object? acidity = freezed,Object? body = freezed,Object? balance = freezed,Object? uniformity = freezed,Object? cleanCup = freezed,Object? sweetness = freezed,Object? overall = freezed,Object? defects = null,Object? notes = freezed,}) {
  return _then(_TastingNote(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as TastingNoteId,beanId: null == beanId ? _self.beanId : beanId // ignore: cast_nullable_to_non_nullable
as BeanId,totalScore: null == totalScore ? _self.totalScore : totalScore // ignore: cast_nullable_to_non_nullable
as double,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,brewRecipeId: freezed == brewRecipeId ? _self.brewRecipeId : brewRecipeId // ignore: cast_nullable_to_non_nullable
as BrewRecipeId?,roastLevel: freezed == roastLevel ? _self.roastLevel : roastLevel // ignore: cast_nullable_to_non_nullable
as RoastLevel?,fragranceAroma: freezed == fragranceAroma ? _self.fragranceAroma : fragranceAroma // ignore: cast_nullable_to_non_nullable
as double?,flavor: freezed == flavor ? _self.flavor : flavor // ignore: cast_nullable_to_non_nullable
as double?,aftertaste: freezed == aftertaste ? _self.aftertaste : aftertaste // ignore: cast_nullable_to_non_nullable
as double?,acidity: freezed == acidity ? _self.acidity : acidity // ignore: cast_nullable_to_non_nullable
as double?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as double?,balance: freezed == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double?,uniformity: freezed == uniformity ? _self.uniformity : uniformity // ignore: cast_nullable_to_non_nullable
as double?,cleanCup: freezed == cleanCup ? _self.cleanCup : cleanCup // ignore: cast_nullable_to_non_nullable
as double?,sweetness: freezed == sweetness ? _self.sweetness : sweetness // ignore: cast_nullable_to_non_nullable
as double?,overall: freezed == overall ? _self.overall : overall // ignore: cast_nullable_to_non_nullable
as double?,defects: null == defects ? _self.defects : defects // ignore: cast_nullable_to_non_nullable
as double,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
