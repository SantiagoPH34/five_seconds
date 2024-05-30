import 'package:five_seconds/features/apps_tracked/domain/entities/apps_tracked.dart';

abstract class AppsTrackedDatasource {
  Future<List<AppTracked>> getTrackedApps();
  Future<void> saveAndRemoveTracked(AppTracked appsTracked);
  Stream<void> watchTrackedApps();


}
