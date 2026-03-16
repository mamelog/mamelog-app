//@GeneratedMicroModule;CoreDomainPackageModule;package:core_domain/src/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:core_authenticator/authenticator.dart' as _i450;
import 'package:core_domain/repository.dart' as _i208;
import 'package:core_domain/src/usecase/create_extraction_use_case.dart' as _i825;
import 'package:core_domain/src/usecase/delete_account_use_case.dart' as _i475;
import 'package:core_domain/src/usecase/enqueue_offline_extraction_use_case.dart' as _i922;
import 'package:core_domain/src/usecase/get_bean_use_case.dart' as _i73;
import 'package:core_domain/src/usecase/get_beans_use_case.dart' as _i351;
import 'package:core_domain/src/usecase/get_drink_log_use_case.dart' as _i673;
import 'package:core_domain/src/usecase/get_drink_logs_use_case.dart' as _i385;
import 'package:core_domain/src/usecase/save_bean_use_case.dart' as _i923;
import 'package:core_domain/src/usecase/save_drink_log_use_case.dart' as _i56;
import 'package:injectable/injectable.dart' as _i526;

class CoreDomainPackageModule extends _i526.MicroPackageModule {
  // initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i922.EnqueueOfflineExtractionUseCase>(
      () => _i922.EnqueueOfflineExtractionUseCase(gh<_i208.PendingExtractionRepository>()),
    );
    gh.factory<_i923.SaveBeanUseCase>(
      () => _i923.SaveBeanUseCase(
        gh<_i208.BeanRepository>(),
        gh<_i450.Authenticator>(),
      ),
    );
    gh.factory<_i673.GetDrinkLogUseCase>(
      () => _i673.GetDrinkLogUseCase(gh<_i208.DrinkLogRepository>()),
    );
    gh.factory<_i385.GetDrinkLogsUseCase>(
      () => _i385.GetDrinkLogsUseCase(gh<_i208.DrinkLogRepository>()),
    );
    gh.factory<_i56.SaveDrinkLogUseCase>(
      () => _i56.SaveDrinkLogUseCase(gh<_i208.DrinkLogRepository>()),
    );
    gh.factory<_i825.CreateExtractionUseCase>(
      () => _i825.CreateExtractionUseCase(gh<_i208.ExtractionRepository>()),
    );
    gh.factory<_i73.GetBeanUseCase>(() => _i73.GetBeanUseCase(gh<_i208.BeanRepository>()));
    gh.factory<_i351.GetBeansUseCase>(() => _i351.GetBeansUseCase(gh<_i208.BeanRepository>()));
    gh.factory<_i475.DeleteAccountUseCase>(
      () => _i475.DeleteAccountUseCase(
        gh<_i450.Authenticator>(),
        gh<_i208.PendingExtractionRepository>(),
      ),
    );
  }
}
