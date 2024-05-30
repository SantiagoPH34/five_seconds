part of 'tracked_apps_bloc.dart';

enum TrackedAppsStatus {
  initial,
  loading,
  success,
  failure,
}

class TrackedAppsState extends Equatable {
  final TrackedAppsStatus status;
  final List<AppTracked> appsList;

  const TrackedAppsState({
    this.status = TrackedAppsStatus.initial,
    this.appsList = const [],
  });

  @override
  List<Object> get props => [status, appsList];
}
