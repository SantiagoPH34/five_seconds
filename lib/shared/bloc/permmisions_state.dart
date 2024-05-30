part of 'permmisions_bloc.dart';

class PermissionsState extends Equatable {
/*   final bool readExternalsStorage;
  final bool writeExternalsStorage; */
  final bool systemAlarmWindows;
  final bool packageUsageStats;

  bool get isReaddy => systemAlarmWindows && packageUsageStats;

  const PermissionsState(
      {/* required this.readExternalsStorage,
      required this.writeExternalsStorage, */
      required this.systemAlarmWindows,
      required this.packageUsageStats});

  PermissionsState copyWith({
    bool? readExternalsStorage,
    bool? writeExternalsStorage,
    bool? systemAlarmWindows,
    bool? packageUsageStats,
  }) {
    return PermissionsState(
      /* readExternalsStorage: readExternalsStorage ?? this.readExternalsStorage,
      writeExternalsStorage:
          writeExternalsStorage ?? this.writeExternalsStorage, */
      systemAlarmWindows: systemAlarmWindows ?? this.systemAlarmWindows,
      packageUsageStats: packageUsageStats ?? this.packageUsageStats,
    );
  }

  @override
  List<Object> get props => [isReaddy, systemAlarmWindows, packageUsageStats];
}
