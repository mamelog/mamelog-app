import 'package:core_model/master.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bean_origin.freezed.dart';

@freezed
abstract class BeanOrigin with _$BeanOrigin {
  const factory BeanOrigin({
    required String id,
    CountryId? countryId,
    String? region,
    String? farm,
    VarietyId? varietyId,
    ProcessingMethodId? processingMethodId,
    String? elevation,
    int? percentage,
  }) = _BeanOrigin;
}
