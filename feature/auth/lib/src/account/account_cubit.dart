import 'dart:async';

import 'package:core_authenticator/authenticator.dart';
import 'package:core_domain/usecase.dart';
import 'package:core_model/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';

part 'account_cubit.freezed.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState.initial() = _Initial;
  const factory AccountState.loading() = _Loading;
  const factory AccountState.success({required User user}) = _Success;
  const factory AccountState.unauthenticated() = _Unauthenticated;
  const factory AccountState.deleting() = _Deleting;
  const factory AccountState.deleteError({required String message}) = _DeleteError;
  const factory AccountState.requiresReAuth() = _RequiresReAuth;
}

@injectable
class AccountCubit extends Cubit<AccountState> {
  AccountCubit(
    this._authenticator,
    this._deleteAccountUseCase,
  ) : super(const AccountState.initial()) {
    _init();
  }

  final Authenticator _authenticator;
  final DeleteAccountUseCase _deleteAccountUseCase;
  static final _log = Logger('AccountCubit');
  StreamSubscription<AuthState>? _authSubscription;

  void _init() {
    _authSubscription = _authenticator.authStateChanges.listen(
      (authState) {
        if (isClosed) return;
        authState.when(
          initial: () {},
          authenticated: (user) => emit(AccountState.success(user: user)),
          unauthenticated: () => emit(const AccountState.unauthenticated()),
        );
      },
      onError: (Object error) {
        _log.warning('Auth stream error: $error');
        if (isClosed) return;
        emit(const AccountState.unauthenticated());
      },
    );

    // Set initial state from current user
    final user = _authenticator.currentUser;
    if (user != null) {
      emit(AccountState.success(user: user));
    } else {
      emit(const AccountState.unauthenticated());
    }
  }

  Future<void> signOut() async {
    emit(const AccountState.loading());
    try {
      await _authenticator.signOut();
      emit(const AccountState.unauthenticated());
    } on Exception catch (e) {
      if (isClosed) return;
      emit(AccountState.deleteError(message: 'Sign out failed: $e'));
    }
  }

  Future<void> deleteAccount() async {
    emit(const AccountState.deleting());
    final result = await _deleteAccountUseCase.execute();
    if (isClosed) return;
    result.when(
      ok: (_) => emit(const AccountState.unauthenticated()),
      error: (error) {
        if (error is ReAuthRequiredException) {
          emit(const AccountState.requiresReAuth());
        } else {
          emit(AccountState.deleteError(message: error.toString()));
        }
      },
    );
  }

  @override
  Future<void> close() async {
    await _authSubscription?.cancel();
    await super.close();
  }
}
