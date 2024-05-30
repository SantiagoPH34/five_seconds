import 'package:five_seconds/features/apps_installed/presentation/bloc/apps_installed_bloc.dart';
import 'package:five_seconds/features/apps_tracked/domain/entities/apps_tracked.dart';
import 'package:five_seconds/features/apps_tracked/presentation/bloc/tracked_apps_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewAppsInstalled extends StatefulWidget {
  const ViewAppsInstalled({super.key});

  @override
  State<ViewAppsInstalled> createState() => _ViewAppsInstalledState();
}

class _ViewAppsInstalledState extends State<ViewAppsInstalled> {
  @override
  void initState() {
    super.initState();
    context.read<AppsInstalledBloc>().add(LoadAppsInstalled());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppsInstalledBloc, AppsInstalledState>(
        builder: (context, state) {
      if (state.status == AppsInstalledStatus.loading ||
          state.status == AppsInstalledStatus.initial) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else if (state.status == AppsInstalledStatus.failure) {
        return const Center(
          child: Text('Error'),
        );
      } else {
        return Column(
          children: [
            TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Buscar app',
                  prefixIcon: Icon(Icons.search),
                ),
                onChanged: (value) {}),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: state.appsInstalled.length,
                itemBuilder: (context, index) {
                  return CheckboxListTile(
                    value: false,
                    onChanged: (value) {
                      context.read<TrackedAppsBloc>().add(
                          AddAndRemoveTrackedApps(
                              appTracked: AppTracked(
                                  name: state.appsInstalled[index].name,
                                  packagename:
                                      state.appsInstalled[index].packageName,
                                  icon:
                                      state.appsInstalled[index].icon!.toList(),
                                  totalLounches: 0)));
                      context
                          .read<AppsInstalledBloc>()
                          .add(RemoveTrackedApps(state.appsInstalled[index]));
                    },
                    secondary: state.appsInstalled[index].icon == null
                        ? null
                        : Image.memory(state.appsInstalled[index].icon!),
                    title: Text(state.appsInstalled[index].name),
                    subtitle: Text(state.appsInstalled[index].packageName),
                  );
                },
              ),
            ),
          ],
        );
      }
    });
  }
}
