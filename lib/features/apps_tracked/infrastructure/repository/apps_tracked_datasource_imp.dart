import 'package:five_seconds/features/apps_tracked/domain/datasource/apps_tracked_dtasource.dart';
import 'package:five_seconds/features/apps_tracked/domain/entities/apps_tracked.dart';
import 'package:five_seconds/features/apps_tracked/domain/repository/apps_tracked_repository.dart';
import 'package:five_seconds/features/apps_tracked/infrastructure/datasource/apps_tracked_datasource_imp.dart';

class AppsTrackedRepositoryImp implements AppsTrackedRepository {
  final AppsTrackedDatasource appsTrackedDatasource;

  AppsTrackedRepositoryImp({AppsTrackedDatasource? appsTrackedDatasource})
      : appsTrackedDatasource =
            appsTrackedDatasource ?? AppsTrackedDatasourceImp();

  @override
  Future<List<AppTracked>> getTrackedApps() {
    return appsTrackedDatasource.getTrackedApps();
  }

  @override
  Future<void> saveAndRemoveTracked(AppTracked appsTracked) {
    return appsTrackedDatasource.saveAndRemoveTracked(appsTracked);
  }

  @override
  Stream<void> getUserChangedStream() {
    return appsTrackedDatasource.watchTrackedApps();
  }

 
}
