import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:five_seconds/features/apps_tracked/domain/entities/apps_tracked.dart';
import 'package:five_seconds/features/apps_tracked/domain/repository/apps_tracked_repository.dart';
import 'package:five_seconds/features/apps_tracked/infrastructure/repository/apps_tracked_datasource_imp.dart';

part 'tracked_apps_event.dart';
part 'tracked_apps_state.dart';

class TrackedAppsBloc extends Bloc<TrackedAppsEvent, TrackedAppsState> {
  final AppsTrackedRepository appsTrackedRepository =
      AppsTrackedRepositoryImp();

  TrackedAppsBloc() : super(const TrackedAppsState()) {
    on<LoadTrackedApps>((event, emit) async {
      emit(const TrackedAppsState(status: TrackedAppsStatus.loading));
      final apps = await appsTrackedRepository.getTrackedApps();
      emit(TrackedAppsState(status: TrackedAppsStatus.success, appsList: apps));
    });

    on<AddAndRemoveTrackedApps>((event, emit) async {
      await appsTrackedRepository.saveAndRemoveTracked(event.appTracked);
    });

    // Escuchar el Stream de cambios
    appsTrackedRepository.getUserChangedStream().listen((_) {
      add(const LoadTrackedApps());
    });

    
         
    }
  }

