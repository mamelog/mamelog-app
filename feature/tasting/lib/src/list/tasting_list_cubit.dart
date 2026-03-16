import 'dart:async';
import 'package:core_domain/usecase.dart';
import 'package:core_model/drink_log.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'tasting_list_cubit.freezed.dart';

@freezed
class TastingListState with _$TastingListState {
  const factory TastingListState.initial() = _Initial;
  const factory TastingListState.loading() = _Loading;
  const factory TastingListState.success({required List<DrinkLog> logs}) = _Success;
  const factory TastingListState.error(String message) = _Error;
}

@injectable
class TastingListCubit extends Cubit<TastingListState> {
  TastingListCubit(this._getDrinkLogsUseCase) : super(const TastingListState.initial()) {
    _init();
  }

  final GetDrinkLogsUseCase _getDrinkLogsUseCase;
  StreamSubscription<List<DrinkLog>>? _subscription;

  void _init() {
    emit(const TastingListState.loading());
    _subscription = _getDrinkLogsUseCase.execute().listen(
      (logs) {
        emit(TastingListState.success(logs: logs));
      },
      onError: (Object e) {
        emit(TastingListState.error(e.toString()));
      },
    );
  }

  @override
  Future<void> close() {
    unawaited(_subscription?.cancel());
    return super.close();
  }
}
