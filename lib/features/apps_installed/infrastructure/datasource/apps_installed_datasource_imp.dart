import 'package:five_seconds/features/apps_installed/domain/datasource/apps_installed_datasource.dart';
import 'package:installed_apps/app_info.dart';
import 'package:installed_apps/installed_apps.dart';

class AppsInstalledDatasourceImp implements AppsInstalledDatasource {

  @override
  Future<List<AppInfo>> getInstalledAppsDevice() async {
    List<AppInfo> apps = await InstalledApps.getInstalledApps(true, true);
    return apps;
  }
}
