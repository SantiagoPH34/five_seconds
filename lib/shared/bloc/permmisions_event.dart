part of 'permmisions_bloc.dart';

sealed class PermmisionsEvent extends Equatable {
  const PermmisionsEvent();

  @override
  List<Object> get props => [];
}

class RequestPermissions extends PermmisionsEvent {
  final bool packageUsageStats;
  // final bool readExternalsStorage;
  final bool systemAlarmWindows;
  // final bool writeExternalsStorage;

  const RequestPermissions({
    required this.packageUsageStats,
    // required this.readExternalsStorage,
    required this.systemAlarmWindows,
    // required this.writeExternalsStorage,
  });
}
