import 'package:installed_apps/app_info.dart';

abstract class AppsInstalledRepository {
  Future<List<AppInfo>> getInstalledAppsDevice();

}
