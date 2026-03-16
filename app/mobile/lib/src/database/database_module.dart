import 'dart:io';

import 'package:core_database_drift/database.dart';
import 'package:drift/native.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

@module
abstract class DatabaseModule {
  @preResolve
  @singleton
  Future<DriftAppDatabase> get database async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return DriftAppDatabase(NativeDatabase.createInBackground(file));
  }
}
