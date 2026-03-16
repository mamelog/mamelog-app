// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'capture_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CaptureState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CaptureState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CaptureState()';
}


}

/// @nodoc
class $CaptureStateCopyWith<$Res>  {
$CaptureStateCopyWith(CaptureState _, $Res Function(CaptureState) __);
}


/// Adds pattern-matching-related methods to [CaptureState].
extension CaptureStatePatterns on CaptureState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CaptureIdle value)?  idle,TResult Function( CaptureReady value)?  ready,TResult Function( Captured value)?  captured,TResult Function( UrlInput value)?  urlInput,TResult Function( Extracting value)?  extracting,TResult Function( Extracted value)?  extracted,TResult Function( ExtractionFailed value)?  extractionFailed,TResult Function( OfflineQueued value)?  offlineQueued,TResult Function( Saving value)?  saving,TResult Function( Saved value)?  saved,TResult Function( SaveFailed value)?  saveFailed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CaptureIdle() when idle != null:
return idle(_that);case CaptureReady() when ready != null:
return ready(_that);case Captured() when captured != null:
return captured(_that);case UrlInput() when urlInput != null:
return urlInput(_that);case Extracting() when extracting != null:
return extracting(_that);case Extracted() when extracted != null:
return extracted(_that);case ExtractionFailed() when extractionFailed != null:
return extractionFailed(_that);case OfflineQueued() when offlineQueued != null:
return offlineQueued(_that);case Saving() when saving != null:
return saving(_that);case Saved() when saved != null:
return saved(_that);case SaveFailed() when saveFailed != null:
return saveFailed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CaptureIdle value)  idle,required TResult Function( CaptureReady value)  ready,required TResult Function( Captured value)  captured,required TResult Function( UrlInput value)  urlInput,required TResult Function( Extracting value)  extracting,required TResult Function( Extracted value)  extracted,required TResult Function( ExtractionFailed value)  extractionFailed,required TResult Function( OfflineQueued value)  offlineQueued,required TResult Function( Saving value)  saving,required TResult Function( Saved value)  saved,required TResult Function( SaveFailed value)  saveFailed,}){
final _that = this;
switch (_that) {
case CaptureIdle():
return idle(_that);case CaptureReady():
return ready(_that);case Captured():
return captured(_that);case UrlInput():
return urlInput(_that);case Extracting():
return extracting(_that);case Extracted():
return extracted(_that);case ExtractionFailed():
return extractionFailed(_that);case OfflineQueued():
return offlineQueued(_that);case Saving():
return saving(_that);case Saved():
return saved(_that);case SaveFailed():
return saveFailed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CaptureIdle value)?  idle,TResult? Function( CaptureReady value)?  ready,TResult? Function( Captured value)?  captured,TResult? Function( UrlInput value)?  urlInput,TResult? Function( Extracting value)?  extracting,TResult? Function( Extracted value)?  extracted,TResult? Function( ExtractionFailed value)?  extractionFailed,TResult? Function( OfflineQueued value)?  offlineQueued,TResult? Function( Saving value)?  saving,TResult? Function( Saved value)?  saved,TResult? Function( SaveFailed value)?  saveFailed,}){
final _that = this;
switch (_that) {
case CaptureIdle() when idle != null:
return idle(_that);case CaptureReady() when ready != null:
return ready(_that);case Captured() when captured != null:
return captured(_that);case UrlInput() when urlInput != null:
return urlInput(_that);case Extracting() when extracting != null:
return extracting(_that);case Extracted() when extracted != null:
return extracted(_that);case ExtractionFailed() when extractionFailed != null:
return extractionFailed(_that);case OfflineQueued() when offlineQueued != null:
return offlineQueued(_that);case Saving() when saving != null:
return saving(_that);case Saved() when saved != null:
return saved(_that);case SaveFailed() when saveFailed != null:
return saveFailed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  idle,TResult Function()?  ready,TResult Function( String imagePath)?  captured,TResult Function( String url,  String inputType)?  urlInput,TResult Function( String? imagePath,  String? url,  String? inputType)?  extracting,TResult Function( ExtractionResult extraction,  String? imagePath,  String? url)?  extracted,TResult Function( String error,  String? imagePath,  String? url,  String? inputType)?  extractionFailed,TResult Function( String message)?  offlineQueued,TResult Function()?  saving,TResult Function( String beanId)?  saved,TResult Function( Bean bean,  ExtractionResult extraction,  String error,  String? imagePath,  String? url)?  saveFailed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CaptureIdle() when idle != null:
return idle();case CaptureReady() when ready != null:
return ready();case Captured() when captured != null:
return captured(_that.imagePath);case UrlInput() when urlInput != null:
return urlInput(_that.url,_that.inputType);case Extracting() when extracting != null:
return extracting(_that.imagePath,_that.url,_that.inputType);case Extracted() when extracted != null:
return extracted(_that.extraction,_that.imagePath,_that.url);case ExtractionFailed() when extractionFailed != null:
return extractionFailed(_that.error,_that.imagePath,_that.url,_that.inputType);case OfflineQueued() when offlineQueued != null:
return offlineQueued(_that.message);case Saving() when saving != null:
return saving();case Saved() when saved != null:
return saved(_that.beanId);case SaveFailed() when saveFailed != null:
return saveFailed(_that.bean,_that.extraction,_that.error,_that.imagePath,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  idle,required TResult Function()  ready,required TResult Function( String imagePath)  captured,required TResult Function( String url,  String inputType)  urlInput,required TResult Function( String? imagePath,  String? url,  String? inputType)  extracting,required TResult Function( ExtractionResult extraction,  String? imagePath,  String? url)  extracted,required TResult Function( String error,  String? imagePath,  String? url,  String? inputType)  extractionFailed,required TResult Function( String message)  offlineQueued,required TResult Function()  saving,required TResult Function( String beanId)  saved,required TResult Function( Bean bean,  ExtractionResult extraction,  String error,  String? imagePath,  String? url)  saveFailed,}) {final _that = this;
switch (_that) {
case CaptureIdle():
return idle();case CaptureReady():
return ready();case Captured():
return captured(_that.imagePath);case UrlInput():
return urlInput(_that.url,_that.inputType);case Extracting():
return extracting(_that.imagePath,_that.url,_that.inputType);case Extracted():
return extracted(_that.extraction,_that.imagePath,_that.url);case ExtractionFailed():
return extractionFailed(_that.error,_that.imagePath,_that.url,_that.inputType);case OfflineQueued():
return offlineQueued(_that.message);case Saving():
return saving();case Saved():
return saved(_that.beanId);case SaveFailed():
return saveFailed(_that.bean,_that.extraction,_that.error,_that.imagePath,_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  idle,TResult? Function()?  ready,TResult? Function( String imagePath)?  captured,TResult? Function( String url,  String inputType)?  urlInput,TResult? Function( String? imagePath,  String? url,  String? inputType)?  extracting,TResult? Function( ExtractionResult extraction,  String? imagePath,  String? url)?  extracted,TResult? Function( String error,  String? imagePath,  String? url,  String? inputType)?  extractionFailed,TResult? Function( String message)?  offlineQueued,TResult? Function()?  saving,TResult? Function( String beanId)?  saved,TResult? Function( Bean bean,  ExtractionResult extraction,  String error,  String? imagePath,  String? url)?  saveFailed,}) {final _that = this;
switch (_that) {
case CaptureIdle() when idle != null:
return idle();case CaptureReady() when ready != null:
return ready();case Captured() when captured != null:
return captured(_that.imagePath);case UrlInput() when urlInput != null:
return urlInput(_that.url,_that.inputType);case Extracting() when extracting != null:
return extracting(_that.imagePath,_that.url,_that.inputType);case Extracted() when extracted != null:
return extracted(_that.extraction,_that.imagePath,_that.url);case ExtractionFailed() when extractionFailed != null:
return extractionFailed(_that.error,_that.imagePath,_that.url,_that.inputType);case OfflineQueued() when offlineQueued != null:
return offlineQueued(_that.message);case Saving() when saving != null:
return saving();case Saved() when saved != null:
return saved(_that.beanId);case SaveFailed() when saveFailed != null:
return saveFailed(_that.bean,_that.extraction,_that.error,_that.imagePath,_that.url);case _:
  return null;

}
}

}

/// @nodoc


class CaptureIdle implements CaptureState {
  const CaptureIdle();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CaptureIdle);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CaptureState.idle()';
}


}




/// @nodoc


class CaptureReady implements CaptureState {
  const CaptureReady();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CaptureReady);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CaptureState.ready()';
}


}




/// @nodoc


class Captured implements CaptureState {
  const Captured({required this.imagePath});
  

 final  String imagePath;

/// Create a copy of CaptureState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CapturedCopyWith<Captured> get copyWith => _$CapturedCopyWithImpl<Captured>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Captured&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath));
}


@override
int get hashCode => Object.hash(runtimeType,imagePath);

@override
String toString() {
  return 'CaptureState.captured(imagePath: $imagePath)';
}


}

/// @nodoc
abstract mixin class $CapturedCopyWith<$Res> implements $CaptureStateCopyWith<$Res> {
  factory $CapturedCopyWith(Captured value, $Res Function(Captured) _then) = _$CapturedCopyWithImpl;
@useResult
$Res call({
 String imagePath
});




}
/// @nodoc
class _$CapturedCopyWithImpl<$Res>
    implements $CapturedCopyWith<$Res> {
  _$CapturedCopyWithImpl(this._self, this._then);

  final Captured _self;
  final $Res Function(Captured) _then;

/// Create a copy of CaptureState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? imagePath = null,}) {
  return _then(Captured(
imagePath: null == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UrlInput implements CaptureState {
  const UrlInput({required this.url, required this.inputType});
  

 final  String url;
 final  String inputType;

/// Create a copy of CaptureState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UrlInputCopyWith<UrlInput> get copyWith => _$UrlInputCopyWithImpl<UrlInput>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UrlInput&&(identical(other.url, url) || other.url == url)&&(identical(other.inputType, inputType) || other.inputType == inputType));
}


@override
int get hashCode => Object.hash(runtimeType,url,inputType);

@override
String toString() {
  return 'CaptureState.urlInput(url: $url, inputType: $inputType)';
}


}

/// @nodoc
abstract mixin class $UrlInputCopyWith<$Res> implements $CaptureStateCopyWith<$Res> {
  factory $UrlInputCopyWith(UrlInput value, $Res Function(UrlInput) _then) = _$UrlInputCopyWithImpl;
@useResult
$Res call({
 String url, String inputType
});




}
/// @nodoc
class _$UrlInputCopyWithImpl<$Res>
    implements $UrlInputCopyWith<$Res> {
  _$UrlInputCopyWithImpl(this._self, this._then);

  final UrlInput _self;
  final $Res Function(UrlInput) _then;

/// Create a copy of CaptureState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? url = null,Object? inputType = null,}) {
  return _then(UrlInput(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,inputType: null == inputType ? _self.inputType : inputType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Extracting implements CaptureState {
  const Extracting({this.imagePath, this.url, this.inputType});
  

 final  String? imagePath;
 final  String? url;
 final  String? inputType;

/// Create a copy of CaptureState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtractingCopyWith<Extracting> get copyWith => _$ExtractingCopyWithImpl<Extracting>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Extracting&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.url, url) || other.url == url)&&(identical(other.inputType, inputType) || other.inputType == inputType));
}


@override
int get hashCode => Object.hash(runtimeType,imagePath,url,inputType);

@override
String toString() {
  return 'CaptureState.extracting(imagePath: $imagePath, url: $url, inputType: $inputType)';
}


}

/// @nodoc
abstract mixin class $ExtractingCopyWith<$Res> implements $CaptureStateCopyWith<$Res> {
  factory $ExtractingCopyWith(Extracting value, $Res Function(Extracting) _then) = _$ExtractingCopyWithImpl;
@useResult
$Res call({
 String? imagePath, String? url, String? inputType
});




}
/// @nodoc
class _$ExtractingCopyWithImpl<$Res>
    implements $ExtractingCopyWith<$Res> {
  _$ExtractingCopyWithImpl(this._self, this._then);

  final Extracting _self;
  final $Res Function(Extracting) _then;

/// Create a copy of CaptureState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? imagePath = freezed,Object? url = freezed,Object? inputType = freezed,}) {
  return _then(Extracting(
imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,inputType: freezed == inputType ? _self.inputType : inputType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class Extracted implements CaptureState {
  const Extracted({required this.extraction, this.imagePath, this.url});
  

 final  ExtractionResult extraction;
 final  String? imagePath;
 final  String? url;

/// Create a copy of CaptureState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtractedCopyWith<Extracted> get copyWith => _$ExtractedCopyWithImpl<Extracted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Extracted&&(identical(other.extraction, extraction) || other.extraction == extraction)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.url, url) || other.url == url));
}


@override
int get hashCode => Object.hash(runtimeType,extraction,imagePath,url);

@override
String toString() {
  return 'CaptureState.extracted(extraction: $extraction, imagePath: $imagePath, url: $url)';
}


}

/// @nodoc
abstract mixin class $ExtractedCopyWith<$Res> implements $CaptureStateCopyWith<$Res> {
  factory $ExtractedCopyWith(Extracted value, $Res Function(Extracted) _then) = _$ExtractedCopyWithImpl;
@useResult
$Res call({
 ExtractionResult extraction, String? imagePath, String? url
});


$ExtractionResultCopyWith<$Res> get extraction;

}
/// @nodoc
class _$ExtractedCopyWithImpl<$Res>
    implements $ExtractedCopyWith<$Res> {
  _$ExtractedCopyWithImpl(this._self, this._then);

  final Extracted _self;
  final $Res Function(Extracted) _then;

/// Create a copy of CaptureState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? extraction = null,Object? imagePath = freezed,Object? url = freezed,}) {
  return _then(Extracted(
extraction: null == extraction ? _self.extraction : extraction // ignore: cast_nullable_to_non_nullable
as ExtractionResult,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CaptureState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExtractionResultCopyWith<$Res> get extraction {
  
  return $ExtractionResultCopyWith<$Res>(_self.extraction, (value) {
    return _then(_self.copyWith(extraction: value));
  });
}
}

/// @nodoc


class ExtractionFailed implements CaptureState {
  const ExtractionFailed({required this.error, this.imagePath, this.url, this.inputType});
  

 final  String error;
 final  String? imagePath;
 final  String? url;
 final  String? inputType;

/// Create a copy of CaptureState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtractionFailedCopyWith<ExtractionFailed> get copyWith => _$ExtractionFailedCopyWithImpl<ExtractionFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtractionFailed&&(identical(other.error, error) || other.error == error)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.url, url) || other.url == url)&&(identical(other.inputType, inputType) || other.inputType == inputType));
}


@override
int get hashCode => Object.hash(runtimeType,error,imagePath,url,inputType);

@override
String toString() {
  return 'CaptureState.extractionFailed(error: $error, imagePath: $imagePath, url: $url, inputType: $inputType)';
}


}

/// @nodoc
abstract mixin class $ExtractionFailedCopyWith<$Res> implements $CaptureStateCopyWith<$Res> {
  factory $ExtractionFailedCopyWith(ExtractionFailed value, $Res Function(ExtractionFailed) _then) = _$ExtractionFailedCopyWithImpl;
@useResult
$Res call({
 String error, String? imagePath, String? url, String? inputType
});




}
/// @nodoc
class _$ExtractionFailedCopyWithImpl<$Res>
    implements $ExtractionFailedCopyWith<$Res> {
  _$ExtractionFailedCopyWithImpl(this._self, this._then);

  final ExtractionFailed _self;
  final $Res Function(ExtractionFailed) _then;

/// Create a copy of CaptureState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,Object? imagePath = freezed,Object? url = freezed,Object? inputType = freezed,}) {
  return _then(ExtractionFailed(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,inputType: freezed == inputType ? _self.inputType : inputType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class OfflineQueued implements CaptureState {
  const OfflineQueued({required this.message});
  

 final  String message;

/// Create a copy of CaptureState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfflineQueuedCopyWith<OfflineQueued> get copyWith => _$OfflineQueuedCopyWithImpl<OfflineQueued>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OfflineQueued&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CaptureState.offlineQueued(message: $message)';
}


}

/// @nodoc
abstract mixin class $OfflineQueuedCopyWith<$Res> implements $CaptureStateCopyWith<$Res> {
  factory $OfflineQueuedCopyWith(OfflineQueued value, $Res Function(OfflineQueued) _then) = _$OfflineQueuedCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$OfflineQueuedCopyWithImpl<$Res>
    implements $OfflineQueuedCopyWith<$Res> {
  _$OfflineQueuedCopyWithImpl(this._self, this._then);

  final OfflineQueued _self;
  final $Res Function(OfflineQueued) _then;

/// Create a copy of CaptureState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(OfflineQueued(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Saving implements CaptureState {
  const Saving();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Saving);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CaptureState.saving()';
}


}




/// @nodoc


class Saved implements CaptureState {
  const Saved({required this.beanId});
  

 final  String beanId;

/// Create a copy of CaptureState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SavedCopyWith<Saved> get copyWith => _$SavedCopyWithImpl<Saved>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Saved&&(identical(other.beanId, beanId) || other.beanId == beanId));
}


@override
int get hashCode => Object.hash(runtimeType,beanId);

@override
String toString() {
  return 'CaptureState.saved(beanId: $beanId)';
}


}

/// @nodoc
abstract mixin class $SavedCopyWith<$Res> implements $CaptureStateCopyWith<$Res> {
  factory $SavedCopyWith(Saved value, $Res Function(Saved) _then) = _$SavedCopyWithImpl;
@useResult
$Res call({
 String beanId
});




}
/// @nodoc
class _$SavedCopyWithImpl<$Res>
    implements $SavedCopyWith<$Res> {
  _$SavedCopyWithImpl(this._self, this._then);

  final Saved _self;
  final $Res Function(Saved) _then;

/// Create a copy of CaptureState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? beanId = null,}) {
  return _then(Saved(
beanId: null == beanId ? _self.beanId : beanId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SaveFailed implements CaptureState {
  const SaveFailed({required this.bean, required this.extraction, required this.error, this.imagePath, this.url});
  

 final  Bean bean;
 final  ExtractionResult extraction;
 final  String error;
 final  String? imagePath;
 final  String? url;

/// Create a copy of CaptureState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveFailedCopyWith<SaveFailed> get copyWith => _$SaveFailedCopyWithImpl<SaveFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveFailed&&(identical(other.bean, bean) || other.bean == bean)&&(identical(other.extraction, extraction) || other.extraction == extraction)&&(identical(other.error, error) || other.error == error)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.url, url) || other.url == url));
}


@override
int get hashCode => Object.hash(runtimeType,bean,extraction,error,imagePath,url);

@override
String toString() {
  return 'CaptureState.saveFailed(bean: $bean, extraction: $extraction, error: $error, imagePath: $imagePath, url: $url)';
}


}

/// @nodoc
abstract mixin class $SaveFailedCopyWith<$Res> implements $CaptureStateCopyWith<$Res> {
  factory $SaveFailedCopyWith(SaveFailed value, $Res Function(SaveFailed) _then) = _$SaveFailedCopyWithImpl;
@useResult
$Res call({
 Bean bean, ExtractionResult extraction, String error, String? imagePath, String? url
});


$BeanCopyWith<$Res> get bean;$ExtractionResultCopyWith<$Res> get extraction;

}
/// @nodoc
class _$SaveFailedCopyWithImpl<$Res>
    implements $SaveFailedCopyWith<$Res> {
  _$SaveFailedCopyWithImpl(this._self, this._then);

  final SaveFailed _self;
  final $Res Function(SaveFailed) _then;

/// Create a copy of CaptureState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bean = null,Object? extraction = null,Object? error = null,Object? imagePath = freezed,Object? url = freezed,}) {
  return _then(SaveFailed(
bean: null == bean ? _self.bean : bean // ignore: cast_nullable_to_non_nullable
as Bean,extraction: null == extraction ? _self.extraction : extraction // ignore: cast_nullable_to_non_nullable
as ExtractionResult,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CaptureState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BeanCopyWith<$Res> get bean {
  
  return $BeanCopyWith<$Res>(_self.bean, (value) {
    return _then(_self.copyWith(bean: value));
  });
}/// Create a copy of CaptureState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExtractionResultCopyWith<$Res> get extraction {
  
  return $ExtractionResultCopyWith<$Res>(_self.extraction, (value) {
    return _then(_self.copyWith(extraction: value));
  });
}
}

// dart format on
