//@GeneratedMicroModule;FeatureCapturePackageModule;package:feature_capture/src/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:core_authenticator/authenticator.dart' as _i450;
import 'package:core_domain/usecase.dart' as _i706;
import 'package:feature_capture/src/bloc/capture_bloc.dart' as _i610;
import 'package:injectable/injectable.dart' as _i526;

class FeatureCapturePackageModule extends _i526.MicroPackageModule {
  // initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i610.CaptureBloc>(
      () => _i610.CaptureBloc(
        gh<_i706.CreateExtractionUseCase>(),
        gh<_i706.SaveBeanUseCase>(),
        gh<_i450.Authenticator>(),
        gh<_i706.EnqueueOfflineExtractionUseCase>(),
      ),
    );
  }
}
