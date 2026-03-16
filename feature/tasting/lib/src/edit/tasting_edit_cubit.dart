import 'package:core_authenticator/authenticator.dart';
import 'package:core_domain/usecase.dart';
import 'package:core_model/drink_log.dart';
import 'package:core_model/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'tasting_edit_cubit.freezed.dart';

@freezed
abstract class TastingEditState with _$TastingEditState {
  const factory TastingEditState({
    required DrinkLogId drinkLogId,
    DrinkLog? originalLog,
    int? rating,
    String? memo,
    @Default(50) int acidity,
    @Default(50) int aroma,
    @Default(50) int sweetness,
    @Default(50) int bitterness,
    @Default(50) int body,
    @Default(true) bool isLoading,
    @Default(false) bool isSaving,
    String? error,
    @Default(false) bool isSuccess,
  }) = _TastingEditState;
}

@injectable
class TastingEditCubit extends Cubit<TastingEditState> {
  TastingEditCubit(
    this._getDrinkLogUseCase,
    this._saveDrinkLogUseCase,
    this._authenticator,
    @factoryParam DrinkLogId drinkLogId,
  ) : super(TastingEditState(drinkLogId: drinkLogId));

  final GetDrinkLogUseCase _getDrinkLogUseCase;
  final SaveDrinkLogUseCase _saveDrinkLogUseCase;
  final Authenticator _authenticator;

  Future<void> load() async {
    emit(state.copyWith(isLoading: true, error: null));
    final result = await _getDrinkLogUseCase.execute(state.drinkLogId);
    if (isClosed) return;
    result.when(
      ok: (log) => emit(
        state.copyWith(
          isLoading: false,
          originalLog: log,
          rating: log.rating,
          memo: log.memo,
          acidity: log.acidity ?? 50,
          aroma: log.aroma ?? 50,
          sweetness: log.sweetness ?? 50,
          bitterness: log.bitterness ?? 50,
          body: log.body ?? 50,
        ),
      ),
      error: (e) => emit(
        state.copyWith(isLoading: false, error: e.toString()),
      ),
    );
  }

  void updateRating(int? rating) => emit(state.copyWith(rating: rating));
  void updateMemo(String memo) => emit(state.copyWith(memo: memo));
  void updateAcidity(int val) => emit(state.copyWith(acidity: val));
  void updateAroma(int val) => emit(state.copyWith(aroma: val));
  void updateSweetness(int val) => emit(state.copyWith(sweetness: val));
  void updateBitterness(int val) => emit(state.copyWith(bitterness: val));
  void updateBody(int val) => emit(state.copyWith(body: val));

  Future<void> save() async {
    final original = state.originalLog;
    if (original == null) {
      emit(state.copyWith(error: 'Data not loaded. Please retry.'));
      return;
    }

    emit(state.copyWith(isSaving: true, error: null));

    final userState = await _authenticator.authStateChanges.first;
    final userId = userState.map<UserId?>(
      initial: (_) => null,
      authenticated: (a) => a.user.id,
      unauthenticated: (_) => null,
    );

    if (userId == null) {
      emit(state.copyWith(isSaving: false, error: 'User not authenticated'));
      return;
    }

    final updatedLog = original.copyWith(
      updatedAt: DateTime.now(),
      rating: state.rating,
      memo: state.memo,
      acidity: state.acidity,
      aroma: state.aroma,
      sweetness: state.sweetness,
      bitterness: state.bitterness,
      body: state.body,
    );

    final result = await _saveDrinkLogUseCase.execute(updatedLog);
    if (isClosed) return;
    result.when(
      ok: (_) => emit(state.copyWith(isSaving: false, isSuccess: true)),
      error: (e) => emit(state.copyWith(isSaving: false, error: e.toString())),
    );
  }
}
