//@GeneratedMicroModule;FeatureTastingPackageModule;package:feature_tasting/src/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:core_authenticator/authenticator.dart' as _i450;
import 'package:core_domain/usecase.dart' as _i706;
import 'package:core_model/bean.dart' as _i266;
import 'package:core_model/drink_log.dart' as _i892;
import 'package:feature_tasting/src/add/tasting_add_cubit.dart' as _i651;
import 'package:feature_tasting/src/detail/tasting_detail_cubit.dart' as _i298;
import 'package:feature_tasting/src/edit/tasting_edit_cubit.dart' as _i481;
import 'package:feature_tasting/src/list/tasting_list_cubit.dart' as _i931;
import 'package:injectable/injectable.dart' as _i526;

class FeatureTastingPackageModule extends _i526.MicroPackageModule {
  // initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factoryParam<_i481.TastingEditCubit, _i892.DrinkLogId, dynamic>(
      (
        drinkLogId,
        _,
      ) => _i481.TastingEditCubit(
        gh<_i706.GetDrinkLogUseCase>(),
        gh<_i706.SaveDrinkLogUseCase>(),
        gh<_i450.Authenticator>(),
        drinkLogId,
      ),
    );
    gh.factoryParam<_i651.TastingAddCubit, _i266.BeanId, dynamic>(
      (
        beanId,
        _,
      ) => _i651.TastingAddCubit(
        gh<_i706.SaveDrinkLogUseCase>(),
        gh<_i450.Authenticator>(),
        beanId,
      ),
    );
    gh.factory<_i298.TastingDetailCubit>(
      () => _i298.TastingDetailCubit(gh<_i706.GetDrinkLogUseCase>()),
    );
    gh.factory<_i931.TastingListCubit>(
      () => _i931.TastingListCubit(gh<_i706.GetDrinkLogsUseCase>()),
    );
  }
}
