import 'package:five_seconds/features/apps_installed/domain/datasource/apps_installed_datasource.dart';
import 'package:five_seconds/features/apps_installed/domain/repository/apps_intalled_repository.dart';
import 'package:five_seconds/features/apps_installed/infrastructure/datasource/apps_installed_datasource_imp.dart';
import 'package:installed_apps/app_info.dart';

class AppsInstalledRepositoryImp implements AppsInstalledRepository {
  final AppsInstalledDatasource appsInstalledRepository;
  AppsInstalledRepositoryImp({AppsInstalledDatasource? appsInstalledRepository})
      : appsInstalledRepository =
            appsInstalledRepository ?? AppsInstalledDatasourceImp();
  @override
  Future<List<AppInfo>> getInstalledAppsDevice() async {
    return await appsInstalledRepository.getInstalledAppsDevice();
  }
}
