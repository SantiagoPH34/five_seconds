import 'package:flutter_accessibility_service/constants.dart';
import 'package:flutter_accessibility_service/flutter_accessibility_service.dart';
import 'package:path_provider/path_provider.dart';
import 'package:isar/isar.dart';

import 'package:five_seconds/features/apps_tracked/domain/datasource/apps_tracked_dtasource.dart';
import 'package:five_seconds/features/apps_tracked/domain/entities/apps_tracked.dart';

class AppsTrackedDatasourceImp implements AppsTrackedDatasource {
  late Future<Isar> db;
  AppsTrackedDatasourceImp() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open([AppTrackedSchema],
          inspector: true, directory: dir.path);
    }
    return Future.value(Isar.getInstance());
  }

  @override
  Future<List<AppTracked>> getTrackedApps() async {
    try {
      final isar = await db;
      return isar.appTrackeds.where().findAll();
    } catch (e) {
      print("error $e ");
      return [];
    }
  }

  @override
  Future<void> saveAndRemoveTracked(AppTracked appsTracked) async {
    final isar = await db;
    final apptracked = await isar.appTrackeds
        .filter()
        .packagenameEqualTo(appsTracked.packagename)
        .findFirst();

    if (apptracked != null) {
      //remover
      isar.writeTxnSync(() => isar.appTrackeds.deleteSync(apptracked.isarId));
      return;
    }
    //insertar
    isar.writeTxnSync(() => isar.appTrackeds.putSync(appsTracked));
  }

  @override
  Stream<void> watchTrackedApps() async* {
    final isar = await db;
    yield* isar.appTrackeds.watchLazy();
  }


}
