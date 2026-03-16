import 'dart:async';

import 'package:core_authenticator/authenticator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';

@immutable
sealed class AuthEvent {
  const AuthEvent();
}

class AuthStarted extends AuthEvent {
  const AuthStarted();
}

class AuthStateChanged extends AuthEvent {
  const AuthStateChanged(this.state);
  final AuthState state;
}

class AuthLogoutRequested extends AuthEvent {
  const AuthLogoutRequested();
}

@immutable
sealed class AuthBlocState {
  const AuthBlocState();

  R maybeMap<R>({
    required R Function() orElse,
    R Function(AuthInitial state)? initial,
    R Function(AuthAuthenticated state)? authenticated,
    R Function(AuthUnauthenticated state)? unauthenticated,
  }) {
    final self = this;
    if (self is AuthInitial && initial != null) {
      return initial(self);
    }
    if (self is AuthAuthenticated && authenticated != null) {
      return authenticated(self);
    }
    if (self is AuthUnauthenticated && unauthenticated != null) {
      return unauthenticated(self);
    }
    return orElse();
  }
}

class AuthInitial extends AuthBlocState {
  const AuthInitial();
}

class AuthAuthenticated extends AuthBlocState {
  const AuthAuthenticated(this.state);
  final AuthState state;
}

class AuthUnauthenticated extends AuthBlocState {
  const AuthUnauthenticated();
}

@lazySingleton
class AuthBloc extends Bloc<AuthEvent, AuthBlocState> {
  AuthBloc(this._authenticator) : super(const AuthInitial()) {
    on<AuthStarted>(_onStarted);
    on<AuthStateChanged>(_onStateChanged);
    on<AuthLogoutRequested>(_onLogoutRequested);

    add(const AuthStarted());
  }

  final Authenticator _authenticator;
  static final _log = Logger('AuthBloc');
  StreamSubscription<AuthState>? _subscription;

  Future<void> _onStarted(AuthStarted event, Emitter<AuthBlocState> emit) async {
    await _subscription?.cancel();
    _subscription = _authenticator.authStateChanges.listen(
      (state) {
        add(AuthStateChanged(state));
      },
      onError: (Object error) {
        _log.severe('Auth state stream error: $error');
        add(const AuthStateChanged(AuthState.unauthenticated()));
      },
    );
  }

  void _onStateChanged(AuthStateChanged event, Emitter<AuthBlocState> emit) {
    event.state.when(
      initial: () => emit(const AuthInitial()),
      authenticated: (user) => emit(AuthAuthenticated(event.state)),
      unauthenticated: () => emit(const AuthUnauthenticated()),
    );
  }

  Future<void> _onLogoutRequested(AuthLogoutRequested event, Emitter<AuthBlocState> emit) async {
    await _authenticator.signOut();
  }

  @override
  Future<void> close() {
    unawaited(_subscription?.cancel());
    return super.close();
  }
}
