import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_accessibility_service/flutter_accessibility_service.dart';
import 'package:permission_handler/permission_handler.dart';

part 'permmisions_event.dart';
part 'permmisions_state.dart';

class PermmisionsBloc extends Bloc<PermmisionsEvent, PermissionsState> {
  PermmisionsBloc()
      : super(const PermissionsState(
            systemAlarmWindows: false, packageUsageStats: false)) {
    on<RequestPermissions>((event, emit) => emit(state.copyWith(
        systemAlarmWindows: event.systemAlarmWindows,
        packageUsageStats: event.packageUsageStats)));

    _init();
  }

  Future<void> _init() async {
    final trackedAppStatus = await Future.wait(
        [_inPermissionSystemAlertGranted(), _inPermissionStorageGranted()]);

    add(RequestPermissions(
        systemAlarmWindows: trackedAppStatus[0],
        packageUsageStats: trackedAppStatus[1]));
  }

  Future<bool> _inPermissionSystemAlertGranted() async {
    final isGranted = await Permission.systemAlertWindow.isGranted;
    return isGranted;
  }

  Future<bool> _inPermissionStorageGranted() async {
    bool isGranted =
        await FlutterAccessibilityService.isAccessibilityPermissionEnabled();
    return isGranted;
  }

  Future<void> requestSystemAlert() async {
    final status = await Permission.systemAlertWindow.request();
    switch (status) {
      case PermissionStatus.granted:
        add(RequestPermissions(
            systemAlarmWindows: true,
            packageUsageStats: state.packageUsageStats));
        break;
      case PermissionStatus.denied:
      case PermissionStatus.restricted:
      case PermissionStatus.limited:
      case PermissionStatus.permanentlyDenied:
      case PermissionStatus.provisional:
        add(RequestPermissions(
            systemAlarmWindows: false,
            packageUsageStats: state.packageUsageStats));
        openAppSettings();
        break;
    }
  }

  Future<void> requestAccessibilityPermission() async {
    await FlutterAccessibilityService.requestAccessibilityPermission();
    final isGranted =
        await FlutterAccessibilityService.isAccessibilityPermissionEnabled();
    add(RequestPermissions(
        systemAlarmWindows: state.systemAlarmWindows,
        packageUsageStats: isGranted));
  }
}
