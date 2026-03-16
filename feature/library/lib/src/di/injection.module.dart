//@GeneratedMicroModule;FeatureLibraryPackageModule;package:feature_library/src/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:core_domain/usecase.dart' as _i706;
import 'package:feature_library/src/detail/coffee_detail_cubit.dart' as _i319;
import 'package:feature_library/src/list/library_list_cubit.dart' as _i1052;
import 'package:injectable/injectable.dart' as _i526;

class FeatureLibraryPackageModule extends _i526.MicroPackageModule {
  // initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i319.CoffeeDetailCubit>(() => _i319.CoffeeDetailCubit(gh<_i706.GetBeanUseCase>()));
    gh.factory<_i1052.LibraryListCubit>(() => _i1052.LibraryListCubit(gh<_i706.GetBeansUseCase>()));
  }
}
