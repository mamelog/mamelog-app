import 'dart:async';
import 'package:core_domain/usecase.dart';
import 'package:core_model/bean.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'library_list_cubit.freezed.dart';

@freezed
class LibraryListState with _$LibraryListState {
  const factory LibraryListState.initial() = _Initial;
  const factory LibraryListState.loading() = _Loading;
  const factory LibraryListState.success({required List<Bean> beans}) = _Success;
  const factory LibraryListState.error(String message) = _Error;
}

@injectable
class LibraryListCubit extends Cubit<LibraryListState> {
  LibraryListCubit(this._getBeansUseCase) : super(const LibraryListState.initial()) {
    _init();
  }

  final GetBeansUseCase _getBeansUseCase;
  StreamSubscription<List<Bean>>? _subscription;

  void _init() {
    emit(const LibraryListState.loading());
    _subscription = _getBeansUseCase.execute().listen(
      (beans) {
        emit(LibraryListState.success(beans: beans));
      },
      onError: (Object e) {
        emit(LibraryListState.error(e.toString()));
      },
    );
  }

  @override
  Future<void> close() {
    unawaited(_subscription?.cancel());
    return super.close();
  }
}
