import 'package:installed_apps/app_info.dart';

abstract class AppsInstalledDatasource {
  Future<List<AppInfo>> getInstalledAppsDevice();
}