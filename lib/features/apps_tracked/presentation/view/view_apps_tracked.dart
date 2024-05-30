import 'dart:typed_data';

import 'package:five_seconds/features/apps_tracked/presentation/bloc/tracked_apps_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewAppsTracked extends StatefulWidget {
  const ViewAppsTracked({super.key});

  @override
  State<ViewAppsTracked> createState() => _ViewAppsTrackedState();
}

class _ViewAppsTrackedState extends State<ViewAppsTracked> {
  @override
  void initState() {
    context.read<TrackedAppsBloc>().add(const LoadTrackedApps());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrackedAppsBloc, TrackedAppsState>(
        builder: (context, state) {
      if (state.status == TrackedAppsStatus.loading ||
          state.status == TrackedAppsStatus.initial) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else if (state.appsList.isEmpty) {
        return const Center(
          child: Text('No tienes apps para Trackear ahora '),
        );
      } else {
        return Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Buscar app',
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: state.appsList.length,
                itemBuilder: (context, index) {
                  return CheckboxListTile(
                    value: true,
                    onChanged: (value) => context.read<TrackedAppsBloc>().add(
                        AddAndRemoveTrackedApps(
                            appTracked: state.appsList[index])),
                    secondary: Image.memory(
                        Uint8List.fromList(state.appsList[index].icon)),
                    title: Text(state.appsList[index].name),
                    subtitle:
                        Text(state.appsList[index].appSesion.length.toString()),
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
