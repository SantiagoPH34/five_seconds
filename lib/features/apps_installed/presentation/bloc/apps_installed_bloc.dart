import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:five_seconds/features/apps_installed/domain/repository/apps_intalled_repository.dart';
import 'package:five_seconds/features/apps_installed/infrastructure/repository/apps_installed_repository_imp.dart';
import 'package:five_seconds/features/apps_tracked/domain/repository/apps_tracked_repository.dart';
import 'package:five_seconds/features/apps_tracked/infrastructure/repository/apps_tracked_datasource_imp.dart';
import 'package:installed_apps/app_info.dart';

part 'apps_installed_event.dart';
part 'apps_installed_state.dart';

class AppsInstalledBloc extends Bloc<AppsInstalledEvent, AppsInstalledState> {
  final AppsInstalledRepository appsInstalledDatasource =
      AppsInstalledRepositoryImp();
  final AppsTrackedRepository appsTrackedDatasource =
      AppsTrackedRepositoryImp();
  AppsInstalledBloc() : super(const AppsInstalledState()) {
    on<LoadAppsInstalled>((event, emit) async {
      emit(const AppsInstalledState(status: AppsInstalledStatus.loading));
      final appsTracked = await appsTrackedDatasource.getTrackedApps();
      final apps = await appsInstalledDatasource.getInstalledAppsDevice();
      final trackedPackageNames =
          appsTracked.map((app) => app.packagename).toList();

      final newApps = apps
          .where((app) => !trackedPackageNames.contains(app.packageName))
          .toList();
      emit(AppsInstalledState(
          status: AppsInstalledStatus.success, appsInstalled: newApps));
    });
    on<RemoveTrackedApps>((event, emit) async {
      emit(state.copywith(
        appsInstalled: state.appsInstalled
            .where((app) => app.packageName != event.appInfo.packageName)
            .toList(),
      ));
    });
  }
}
