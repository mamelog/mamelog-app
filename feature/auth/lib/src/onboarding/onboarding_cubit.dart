import 'package:core_authenticator/authenticator.dart';
import 'package:core_common/result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'onboarding_cubit.freezed.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState.initial() = OnboardingInitial;
  const factory OnboardingState.loading() = OnboardingLoading;
  const factory OnboardingState.success() = OnboardingSuccess;
  const factory OnboardingState.error(String message) = OnboardingError;
}

@injectable
class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit(this._authenticator) : super(const OnboardingInitial());

  final Authenticator _authenticator;

  Future<void> signInWithGoogle() async {
    emit(const OnboardingLoading());
    final result = await _authenticator.signInWithGoogle();
    _handleResult(result);
  }

  Future<void> signInWithApple() async {
    emit(const OnboardingLoading());
    final result = await _authenticator.signInWithApple();
    _handleResult(result);
  }

  void _handleResult(Result<void> result) {
    result.when(
      ok: (_) => emit(const OnboardingSuccess()),
      error: (_) => emit(
        const OnboardingError('Sign-in failed. Please try again.'),
      ),
    );
  }
}
