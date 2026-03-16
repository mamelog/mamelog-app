import 'package:core_common/result.dart';
import 'package:core_database/dao.dart';
import 'package:core_domain/repository.dart';
import 'package:core_model/master.dart';
import 'package:core_network/master.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: MasterDataRepository)
class MasterDataRepositoryImpl implements MasterDataRepository {
  MasterDataRepositoryImpl(this._masterDataDao, this._masterDataApi);

  final MasterDataDao _masterDataDao;
  final MasterDataApi _masterDataApi;

  @override
  Stream<List<Country>> watchCountries() => _masterDataDao.watchCountries();

  @override
  Stream<List<Variety>> watchVarieties() => _masterDataDao.watchVarieties();

  @override
  Stream<List<ProcessingMethod>> watchProcessingMethods() =>
      _masterDataDao.watchProcessingMethods();

  @override
  Stream<List<FlavorDescriptor>> watchFlavorDescriptors() =>
      _masterDataDao.watchFlavorDescriptors();

  @override
  Future<Result<void>> refreshAll() async {
    try {
      final results = await Future.wait([
        _masterDataApi.getCountries(),
        _masterDataApi.getVarieties(),
        _masterDataApi.getProcessingMethods(),
        _masterDataApi.getFlavorDescriptors(),
      ]);

      final countriesDto = results[0] as List<CountrySummary>;
      final varietiesDto = results[1] as List<VarietySummary>;
      final processingMethodsDto = results[2] as List<ProcessingMethodSummary>;
      final flavorDescriptorsDto = results[3] as List<FlavorDescriptorSummary>;

      await Future.wait([
        _masterDataDao.upsertCountries(countriesDto.map(_mapToCountry).toList()),
        _masterDataDao.upsertVarieties(varietiesDto.map(_mapToVariety).toList()),
        _masterDataDao.upsertProcessingMethods(
          processingMethodsDto.map(_mapToProcessingMethod).toList(),
        ),
        _masterDataDao.upsertFlavorDescriptors(
          flavorDescriptorsDto.map(_mapToFlavorDescriptor).toList(),
        ),
      ]);
      return const Result.ok(null);
    } on Object catch (e) {
      return Result.error(e is Exception ? e : Exception('$e'));
    }
  }

  Country _mapToCountry(CountrySummary dto) {
    return Country(
      id: dto.id,
      name: dto.name,
      nameEn: dto.name, // TODO(ai): Get nameEn from API if available
      isoAlpha2: dto.isoAlpha2,
    );
  }

  Variety _mapToVariety(VarietySummary dto) {
    return Variety(
      id: dto.id,
      name: dto.name,
    );
  }

  ProcessingMethod _mapToProcessingMethod(ProcessingMethodSummary dto) {
    return ProcessingMethod(
      id: dto.id,
      name: dto.name,
    );
  }

  FlavorDescriptor _mapToFlavorDescriptor(FlavorDescriptorSummary dto) {
    return FlavorDescriptor(
      id: dto.id,
      name: dto.name,
      nameJa: dto.nameJa,
      tier: 1, // TODO(ai): Get tier from API if available
    );
  }
}
