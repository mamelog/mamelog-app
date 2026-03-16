import 'package:core_domain/usecase.dart';
import 'package:core_model/bean.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'coffee_detail_cubit.freezed.dart';

@freezed
class CoffeeDetailState with _$CoffeeDetailState {
  const factory CoffeeDetailState.initial() = _Initial;
  const factory CoffeeDetailState.loading() = _Loading;
  const factory CoffeeDetailState.success({required Bean bean}) = _Success;
  const factory CoffeeDetailState.error(String message) = _Error;
}

@injectable
class CoffeeDetailCubit extends Cubit<CoffeeDetailState> {
  CoffeeDetailCubit(this._getBeanUseCase) : super(const CoffeeDetailState.initial());

  final GetBeanUseCase _getBeanUseCase;

  Future<void> load(BeanId id) async {
    emit(const CoffeeDetailState.loading());
    final result = await _getBeanUseCase.execute(id);
    if (isClosed) return;
    result.when(
      ok: (bean) => emit(CoffeeDetailState.success(bean: bean)),
      error: (error) => emit(CoffeeDetailState.error(error.toString())),
    );
  }
}
