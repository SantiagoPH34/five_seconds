part of 'tracked_apps_bloc.dart';

sealed class TrackedAppsEvent extends Equatable {
  const TrackedAppsEvent();

  @override
  List<Object> get props => [];
}

class LoadTrackedApps extends TrackedAppsEvent {
  const LoadTrackedApps();
}

class AddAndRemoveTrackedApps extends TrackedAppsEvent {
  final AppTracked appTracked;
  const AddAndRemoveTrackedApps({
    required this.appTracked,
  });
}



