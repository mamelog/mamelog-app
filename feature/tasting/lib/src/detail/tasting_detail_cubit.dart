import 'package:core_domain/usecase.dart';
import 'package:core_model/drink_log.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'tasting_detail_cubit.freezed.dart';

@freezed
class TastingDetailState with _$TastingDetailState {
  const factory TastingDetailState.initial() = _Initial;
  const factory TastingDetailState.loading() = _Loading;
  const factory TastingDetailState.success({required DrinkLog log}) = _Success;
  const factory TastingDetailState.error(String message) = _Error;
}

@injectable
class TastingDetailCubit extends Cubit<TastingDetailState> {
  TastingDetailCubit(this._getDrinkLogUseCase) : super(const TastingDetailState.initial());

  final GetDrinkLogUseCase _getDrinkLogUseCase;

  Future<void> load(DrinkLogId id) async {
    emit(const TastingDetailState.loading());
    final result = await _getDrinkLogUseCase.execute(id);
    if (isClosed) return;
    result.when(
      ok: (log) => emit(TastingDetailState.success(log: log)),
      error: (error) => emit(TastingDetailState.error(error.toString())),
    );
  }
}
