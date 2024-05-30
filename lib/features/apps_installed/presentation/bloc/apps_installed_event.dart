part of 'apps_installed_bloc.dart';

sealed class AppsInstalledEvent extends Equatable {
  const AppsInstalledEvent();

  @override
  List<Object> get props => [];
}

class LoadAppsInstalled extends AppsInstalledEvent {}

class AddTackedApps extends AppsInstalledEvent {
  final AppInfo appInfo;
  const AddTackedApps(this.appInfo);
}

class RemoveTrackedApps extends AppsInstalledEvent {
  final AppInfo appInfo;
  const RemoveTrackedApps(this.appInfo);
}
