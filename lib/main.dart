import 'package:five_seconds/config/routes.dart';
import 'package:five_seconds/features/apps_installed/presentation/bloc/apps_installed_bloc.dart';
import 'package:five_seconds/features/apps_tracked/presentation/bloc/tracked_apps_bloc.dart';
import 'package:five_seconds/shared/bloc/permmisions_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (context) => PermmisionsBloc()),
    BlocProvider(create: (context) => TrackedAppsBloc()),
    BlocProvider(create: (context) => AppsInstalledBloc()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRoute,
    );
  }
}
