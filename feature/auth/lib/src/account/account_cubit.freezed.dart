// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AccountState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AccountState()';
}


}

/// @nodoc
class $AccountStateCopyWith<$Res>  {
$AccountStateCopyWith(AccountState _, $Res Function(AccountState) __);
}


/// Adds pattern-matching-related methods to [AccountState].
extension AccountStatePatterns on AccountState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Success value)?  success,TResult Function( _Unauthenticated value)?  unauthenticated,TResult Function( _Deleting value)?  deleting,TResult Function( _DeleteError value)?  deleteError,TResult Function( _RequiresReAuth value)?  requiresReAuth,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Unauthenticated() when unauthenticated != null:
return unauthenticated(_that);case _Deleting() when deleting != null:
return deleting(_that);case _DeleteError() when deleteError != null:
return deleteError(_that);case _RequiresReAuth() when requiresReAuth != null:
return requiresReAuth(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Success value)  success,required TResult Function( _Unauthenticated value)  unauthenticated,required TResult Function( _Deleting value)  deleting,required TResult Function( _DeleteError value)  deleteError,required TResult Function( _RequiresReAuth value)  requiresReAuth,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Success():
return success(_that);case _Unauthenticated():
return unauthenticated(_that);case _Deleting():
return deleting(_that);case _DeleteError():
return deleteError(_that);case _RequiresReAuth():
return requiresReAuth(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Success value)?  success,TResult? Function( _Unauthenticated value)?  unauthenticated,TResult? Function( _Deleting value)?  deleting,TResult? Function( _DeleteError value)?  deleteError,TResult? Function( _RequiresReAuth value)?  requiresReAuth,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Unauthenticated() when unauthenticated != null:
return unauthenticated(_that);case _Deleting() when deleting != null:
return deleting(_that);case _DeleteError() when deleteError != null:
return deleteError(_that);case _RequiresReAuth() when requiresReAuth != null:
return requiresReAuth(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( User user)?  success,TResult Function()?  unauthenticated,TResult Function()?  deleting,TResult Function( String message)?  deleteError,TResult Function()?  requiresReAuth,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.user);case _Unauthenticated() when unauthenticated != null:
return unauthenticated();case _Deleting() when deleting != null:
return deleting();case _DeleteError() when deleteError != null:
return deleteError(_that.message);case _RequiresReAuth() when requiresReAuth != null:
return requiresReAuth();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( User user)  success,required TResult Function()  unauthenticated,required TResult Function()  deleting,required TResult Function( String message)  deleteError,required TResult Function()  requiresReAuth,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Success():
return success(_that.user);case _Unauthenticated():
return unauthenticated();case _Deleting():
return deleting();case _DeleteError():
return deleteError(_that.message);case _RequiresReAuth():
return requiresReAuth();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( User user)?  success,TResult? Function()?  unauthenticated,TResult? Function()?  deleting,TResult? Function( String message)?  deleteError,TResult? Function()?  requiresReAuth,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.user);case _Unauthenticated() when unauthenticated != null:
return unauthenticated();case _Deleting() when deleting != null:
return deleting();case _DeleteError() when deleteError != null:
return deleteError(_that.message);case _RequiresReAuth() when requiresReAuth != null:
return requiresReAuth();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AccountState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AccountState.initial()';
}


}




/// @nodoc


class _Loading implements AccountState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AccountState.loading()';
}


}




/// @nodoc


class _Success implements AccountState {
  const _Success({required this.user});
  

 final  User user;

/// Create a copy of AccountState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AccountState.success(user: $user)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $AccountStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 User user
});


$UserCopyWith<$Res> get user;

}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of AccountState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_Success(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}

/// Create a copy of AccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _Unauthenticated implements AccountState {
  const _Unauthenticated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Unauthenticated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AccountState.unauthenticated()';
}


}




/// @nodoc


class _Deleting implements AccountState {
  const _Deleting();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Deleting);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AccountState.deleting()';
}


}




/// @nodoc


class _DeleteError implements AccountState {
  const _DeleteError({required this.message});
  

 final  String message;

/// Create a copy of AccountState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteErrorCopyWith<_DeleteError> get copyWith => __$DeleteErrorCopyWithImpl<_DeleteError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AccountState.deleteError(message: $message)';
}


}

/// @nodoc
abstract mixin class _$DeleteErrorCopyWith<$Res> implements $AccountStateCopyWith<$Res> {
  factory _$DeleteErrorCopyWith(_DeleteError value, $Res Function(_DeleteError) _then) = __$DeleteErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$DeleteErrorCopyWithImpl<$Res>
    implements _$DeleteErrorCopyWith<$Res> {
  __$DeleteErrorCopyWithImpl(this._self, this._then);

  final _DeleteError _self;
  final $Res Function(_DeleteError) _then;

/// Create a copy of AccountState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_DeleteError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _RequiresReAuth implements AccountState {
  const _RequiresReAuth();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequiresReAuth);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AccountState.requiresReAuth()';
}


}




// dart format on
