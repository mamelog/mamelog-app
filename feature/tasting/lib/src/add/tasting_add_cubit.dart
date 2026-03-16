import 'package:core_authenticator/authenticator.dart';
import 'package:core_domain/usecase.dart';
import 'package:core_model/bean.dart';
import 'package:core_model/drink_log.dart';
import 'package:core_model/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'tasting_add_cubit.freezed.dart';

@freezed
abstract class TastingAddState with _$TastingAddState {
  const factory TastingAddState({
    required BeanId beanId,
    required DateTime drunkAt,
    int? rating,
    String? memo,
    @Default(50) int acidity,
    @Default(50) int aroma,
    @Default(50) int sweetness,
    @Default(50) int bitterness,
    @Default(50) int body,
    @Default(false) bool isSaving,
    String? error,
    @Default(false) bool isSuccess,
  }) = _TastingAddState;
}

@injectable
class TastingAddCubit extends Cubit<TastingAddState> {
  TastingAddCubit(
    this._saveDrinkLogUseCase,
    this._authenticator,
    @factoryParam BeanId beanId,
  ) : super(
        TastingAddState(
          beanId: beanId,
          drunkAt: DateTime.now(),
        ),
      );

  final SaveDrinkLogUseCase _saveDrinkLogUseCase;
  final Authenticator _authenticator;

  void updateRating(int? rating) => emit(state.copyWith(rating: rating));
  void updateMemo(String memo) => emit(state.copyWith(memo: memo));
  void updateAcidity(int val) => emit(state.copyWith(acidity: val));
  void updateAroma(int val) => emit(state.copyWith(aroma: val));
  void updateSweetness(int val) => emit(state.copyWith(sweetness: val));
  void updateBitterness(int val) => emit(state.copyWith(bitterness: val));
  void updateBody(int val) => emit(state.copyWith(body: val));

  Future<void> save() async {
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

    final log = DrinkLog(
      id: DrinkLogId.generate(),
      userId: userId,
      beanId: state.beanId,
      drunkAt: state.drunkAt,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      rating: state.rating,
      memo: state.memo,
      acidity: state.acidity,
      aroma: state.aroma,
      sweetness: state.sweetness,
      bitterness: state.bitterness,
      body: state.body,
    );

    final result = await _saveDrinkLogUseCase.execute(log);

    result.when(
      ok: (_) => emit(state.copyWith(isSaving: false, isSuccess: true)),
      error: (e) => emit(state.copyWith(isSaving: false, error: e.toString())),
    );
  }
}
