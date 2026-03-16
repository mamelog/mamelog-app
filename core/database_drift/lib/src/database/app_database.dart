import 'package:core_database_drift/src/converter/enum_converters.dart';
import 'package:core_database_drift/src/dao/bean_dao_impl.dart';
import 'package:core_database_drift/src/dao/drink_log_dao_impl.dart';
import 'package:core_database_drift/src/dao/master_data_dao_impl.dart';
import 'package:core_database_drift/src/dao/pending_extraction_dao_impl.dart';
import 'package:core_database_drift/src/dao/roaster_dao_impl.dart';
import 'package:core_database_drift/src/table/bean_flavor_notes.dart';
import 'package:core_database_drift/src/table/bean_origins.dart';
import 'package:core_database_drift/src/table/beans.dart';
import 'package:core_database_drift/src/table/countries.dart';
import 'package:core_database_drift/src/table/drink_logs.dart';
import 'package:core_database_drift/src/table/flavor_descriptors.dart';
import 'package:core_database_drift/src/table/pending_extractions.dart';
import 'package:core_database_drift/src/table/processing_methods.dart';
import 'package:core_database_drift/src/table/roasters.dart';
import 'package:core_database_drift/src/table/tasting_notes.dart';
import 'package:core_database_drift/src/table/users.dart';
import 'package:core_database_drift/src/table/varieties.dart';
import 'package:core_model/bean.dart';
import 'package:drift/drift.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [
    Users,
    Roasters,
    Beans,
    BeanOrigins,
    BeanFlavorNotes,
    DrinkLogs,
    TastingNotes,
    Countries,
    Varieties,
    ProcessingMethods,
    FlavorDescriptors,
    PendingExtractions,
  ],
  daos: [
    BeanDaoImpl,
    DrinkLogDaoImpl,
    MasterDataDaoImpl,
    PendingExtractionDaoImpl,
    RoasterDaoImpl,
  ],
)
class DriftAppDatabase extends _$DriftAppDatabase {
  DriftAppDatabase(super.e);

  @override
  int get schemaVersion => 1;
}
