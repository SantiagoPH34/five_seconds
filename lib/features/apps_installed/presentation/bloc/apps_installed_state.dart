part of 'apps_installed_bloc.dart';

enum AppsInstalledStatus {
  initial,
  loading,
  success,
  failure,
}

class AppsInstalledState extends Equatable {
  final AppsInstalledStatus status;
  final List<AppInfo> appsInstalled;
  const AppsInstalledState(
      {this.status = AppsInstalledStatus.initial,
      this.appsInstalled = const []});

  AppsInstalledState copywith({List<AppInfo>? appsInstalled}) {
    return AppsInstalledState(
      status: status,
      appsInstalled: appsInstalled ?? this.appsInstalled,
    );
  }

  @override
  List<Object> get props => [appsInstalled];
}
